# frozen_string_literal: true

require_relative '../config/game/g_1817'
require_relative '../loan.rb'
require_relative 'base'

module Engine
  module Game
    class G1817 < Base
      register_colors(black: '#0a0a0a',
                      blue: '#0a70b3',
                      brightGreen: '#7bb137',
                      brown: '#881a1e',
                      gold: '#e09001',
                      gray: '#9a9a9d',
                      green: '#008f4f',
                      lavender: '#baa4cb',
                      lightBlue: '#37b2e2',
                      lightBrown: '#b58168',
                      lime: '#bdbd00',
                      navy: '#004d95',
                      natural: '#fbf4de',
                      orange: '#eb6f0e',
                      pink: '#ec767c',
                      red: '#dd0030',
                      turquoise: '#235758',
                      violet: '#4d2674',
                      white: '#ffffff',
                      yellow: '#fcea18')

      load_from_json(Config::Game::G1817::JSON)

      GAME_LOCATION = 'NYSE, USA'
      GAME_RULES_URL = 'https://drive.google.com/file/d/0B1SWz2pNe2eAbnI4NVhpQXV4V0k/view'
      GAME_DESIGNER = 'Craig Bartell, Tim Flowers'
      GAME_PUBLISHER = Publisher::INFO[:all_aboard_games]
      GAME_INFO_URL = 'https://github.com/tobymao/18xx/wiki/1817'
      SEED_MONEY = 200
      MUST_BUY_TRAIN = :never
      EBUY_PRES_SWAP = false # allow presidential swaps of other corps when ebuying
      POOL_SHARE_DROP = :one
      SELL_MOVEMENT = :none

      # @todo: this needs purchase of the 8 train
      GAME_END_CHECK = { bankrupt: :immediate }.freeze

      attr_reader :loan_value

      def bankruptcy_limit_reached?
        @players.reject(&:bankrupt).one?
      end

      def interest_rate
        @interest_fixed || [[5, ((loans_taken + 4) / 5).to_i * 5].max, 70].min
      end

      def interest_payable(entity)
        (interest_rate * entity.loans.size * @loan_value) / 100
      end

      def maximum_loans(entity)
        entity.total_shares
      end

      # Two lays with one being an upgrade, second tile costs 20
      TILE_LAYS = [{ lay: true, upgrade: true }, { lay: true, upgrade: :not_if_upgraded, cost: 20 }].freeze

      def new_auction_round
        log << "Seed Money for initial auction is #{format_currency(SEED_MONEY)}" unless @round
        Round::Auction.new(self, [
          Step::G1817::SelectionAuction,
        ])
      end

      def stock_round
        @interest_fixed = nil
        Round::Stock.new(self, [
          Step::DiscardTrain,
          Step::HomeToken,
          Step::G1817::BuySellParShares,
        ])
      end

      def operating_round(round_num)
        @interest_fixed = nil
        @interest_fixed = interest_rate
        # Revaluate if private companies are owned by corps with trains
        @companies.each do |company|
          next unless company.owner

          company.abilities(:revenue_change, 'has_train') do |ability|
            company.revenue = company.owner.trains.any? ? ability.revenue : 0
          end
        end

        Round::G1817::Operating.new(self, [
          Step::Bankrupt, # @todo: needs customization
          Step::G1817::CashCrisis,
          Step::G1817::SpecialTrack,
          Step::DiscardTrain,
          Step::G1817::Track,
          Step::Token,
          Step::Route,
          Step::G1817::Dividend,
          Step::G1817::BuyTrain,

          # @todo: pay fees on loans, repay loans
          # @todo: check for liquidation
        ], round_num: round_num)
      end

      def or_round_finished
        if @depot.upcoming.first.name == '2'
          depot.export_all!('2')
        else
          depot.export!
        end
      end

      def home_token_locations(corporation)
        hexes.select do |hex|
          hex.tile.cities.any? { |city| city.tokenable?(corporation, free: true) }
        end
      end

      def init_loans
        @loan_value = 100
        70.times.map { |id| Loan.new(id, @loan_value) }
      end

      def take_loan(entity, loan)
        if entity.loans.size + 1 > maximum_loans(entity)
          game_error("Cannot take more than #{maximum_loans(entity)} loans")
        end
        price = entity.share_price.price
        @log << "#{entity.owner.name} takes a loan for #{entity.name} "\
          "and receives #{format_currency(loan.amount)}"
        @bank.spend(loan.amount, entity)
        @stock_market.move_left(entity)
        log_share_price(entity, price)
        entity.loans << loan
        @loans.delete(loan)
      end
    end
  end
end
