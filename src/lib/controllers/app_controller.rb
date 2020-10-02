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
            RoundsView.new round: new_round, round_number: Round.num_rounds
        end until new_round.result == 'lost'
        new_game = Game.new
        GamesView.get_player_name game: new_game
        new_game.score = Round.count_wins * 100 + Round.count_draws * 25
        GamesView.new game: new_game
        self.play_or_menu
    end
    
    def show_highscores 
        games = Game.map { |game| [game.player_name, game.score] }
        HighscoresView.show games: games
        self.play_or_menu
    end

    def show_rules
        RulesView.show
        self.play_or_menu
    end

    def play_or_menu
        OptionsView.show == false ? nil : self.play_game
    end

    def exit?
        ExitView.show
    end

    module_function :play_game, :show_highscores, :show_rules, :play_or_menu, :exit?
end