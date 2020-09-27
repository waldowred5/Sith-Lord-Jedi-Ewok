require_relative '../models/round'
require_relative '../models/game'

module AppController
    def show_highscores
        games = Game.all
        ::HighscoresView.show games: games       
    end

    module_function :show_highscores
end