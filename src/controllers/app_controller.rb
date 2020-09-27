require_relative '../models/round'
require_relative '../models/game'
require_relative '../views/rounds_view'
require_relative '../views/games_view'
require_relative '../views/highscores_view'
require_relative '../views/rules_view'
require_relative '../views/exit_view'

module AppController
    def play_game
        begin
            begin
                new_round = Round.new
                ::RoundsView.new round: new_round
            end until new_round.result == 'lost'
            new_game = Game.new
            ::GamesView.new game: new_game
            input = gets.chomp.downcase.strip
        end until input == 'menu'
    end
    
    def show_highscores
        #p ::Game::GAMES 
        games = Game.all
        #p games <-- same reference as ::Game::GAMES (should be different?)
        ::HighscoresView.show games: games       
    end

    def show_rules
        ::RulesView.show
    end

    def exit?
        ::ExitView.show
    end

    module_function :play_game, :show_highscores, :show_rules, :exit?
end