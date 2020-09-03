# frozen_string_literal: true

require_relative '../config/game/g_1857'
#require_relative '../g_18_chesapeake/share_pool'
#require_relative '../round/g_18_chesapeake/stock'
require_relative 'base'

module Engine
  module Game
    class G1857 < Base

      load_from_json(Config::Game::G1857::JSON)

      DEV_STAGE = :production

      GAME_LOCATION = 'Argentina'
      GAME_RULES_URL = ''
      GAME_DESIGNER = 'Eddie Robbins'
      GAME_PUBLISHER = 'winsome'
      GAME_INFO_URL = 'https://github.com/tobymao/18xx/wiki/1857'

      SELL_BUY_ORDER = :sell_buy_sell
      TRACK_RESTRICTION = :permissive


      #def stock_round
        #Round::G1830::Stock.new(self, [
        #  Step::DiscardTrain,
        #  Step::G18Chesapeake::SpecialTrack,
        #  Step::BuySellParShares,
        #])
      #end

      def operating_round(round_num)
        Round::Operating.new(self, [
          Step::Bankrupt,
          Step::Exchange,
          Step::DiscardTrain,
          Step::SpecialTrack,
          Step::BuyCompany,
          Step::HomeToken,
          Step::Track,
          Step::Token,
          Step::Route,
          Step::Dividend,
          Step::BuyTrain,
          [Step::BuyCompany, blocks: true],
        ], round_num: round_num)
      end
      
    end
  end
end
