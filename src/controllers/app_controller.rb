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
                round_number = ::Round::ROUNDS.length + 1
                ::RoundsView.new round: new_round, round_number: round_number
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
        input = gets.chomp.downcase.strip
        input == 'menu' ? input : ::AppController.play_game
    end

    def show_rules
        ::RulesView.show
        input = gets.chomp.downcase.strip
        input == 'menu' ? input : ::AppController.play_game
    end

    def exit?
        ::ExitView.show
    end

    module_function :play_game, :show_highscores, :show_rules, :exit?
end