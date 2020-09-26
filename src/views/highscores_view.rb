# require_relative '../controllers/options_controller'

module HighscoresView
    def show
        puts "\nHighscores:\n"
        ::Game::GAMES.each {|x| puts "Player: #{x.player_name} - Score: #{x.score}\n"}
        # ::OptionsController
    end

    module_function :show
end