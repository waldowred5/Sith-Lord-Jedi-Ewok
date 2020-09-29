require_relative '../models/round'
require_relative '../models/game'
require_relative '../views/rounds_view'
require_relative '../views/games_view'
require_relative '../views/highscores_view'
require_relative '../views/rules_view'
require_relative '../views/options_view'
require_relative '../views/exit_view'

module AppController
    def play_game
        begin
            new_round = Round.new
            round_number = Round::ROUNDS.length + 1
            RoundsView.new round: new_round, round_number: round_number
        end until new_round.result == 'lost'
        new_game = Game.new
        GamesView.new game: new_game
        AppController.play_or_menu
    end
    
    def show_highscores 
        games = Game.map { |game| [game.player_name, game.score] }
        HighscoresView.show games: games
        AppController.play_or_menu
    end

    def show_rules
        RulesView.show
        AppController.play_or_menu
    end

    def play_or_menu
        OptionsView.show == false ? nil : ::AppController.play_game
    end

    def exit?
        ExitView.show
    end

    module_function :play_game, :show_highscores, :show_rules, :play_or_menu, :exit?
end