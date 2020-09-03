# frozen_string_literal: true

require_relative '../config/game/g_1830'
require_relative 'base'

module Engine
  module Game
    class G1830 < Base
      register_colors(green: '#237333',
                      red: '#d81e3e',
                      blue: '#0189d1',
                      lightBlue: '#a2dced')

      load_from_json(Config::Game::G1830::JSON)

      DEV_STAGE = :production

      GAME_LOCATION = 'USA'
      GAME_RULES_URL = 'https://lookout-spiele.de/wp-content/uploads/1830_Spielregeln_EN_WEB.pdf'
      GAME_DESIGNER = 'Francis Tresham'
      GAME_PUBLISHER = 'lookout'
      GAME_INFO_URL = 'https://github.com/tobymao/18xx/wiki/1830'

      SELL_BUY_ORDER = :sell_buy_sell
      TRACK_RESTRICTION = :permissive

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
