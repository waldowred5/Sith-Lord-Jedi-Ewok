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
            self.clear_screen
            new_round = Round.new
            request_player_input = RoundsView.input round: new_round, round_number: Round.num_rounds
            new_round.player_input = request_player_input
            new_round.player_selection = new_round.selections request_player_input
            RoundsView.display_results new_round
            new_round.save!
            RoundsView.successful_save
        end until new_round.result == 'lost'
        new_game = Game.new
        GamesView.get_player_name new_game
        new_game.score = Round.count_wins * 100 + Round.count_draws * 25
        self.clear_screen
        GamesView.thanks new_game
        new_game.save!
        GamesView.successful_save
        Round.clear_rounds
        self.play_or_menu
    end
    
    def show_highscores 
        self.clear_screen
        games = Game.map { |game| [game.player_name, game.score] }
        HighscoresView.show games: games
        self.play_or_menu
    end

    def show_rules
        self.clear_screen
        RulesView.show
        self.play_or_menu
    end

    def play_or_menu
        OptionsView.show == false ? nil : self.play_game
    end

    def clear_screen
        system('clear')
    end

    def exit?
        self.clear_screen
        ExitView.show
    end

    module_function :play_game, :show_highscores, :show_rules, :play_or_menu, :clear_screen, :exit?
end