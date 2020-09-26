module HighscoresView
    def show
        puts "\nHighscores:\n"
        ::Game::GAMES.each {|x| puts "Player: #{x.player_name} - Score: #{x.score}"}
        puts "\n\nWhat would you like to do?\nOptions: play, menu"
        input = gets.chomp.downcase.strip
        input == 'menu' ? input : ::GamesController.new
        puts ""
    end

    module_function :show
end