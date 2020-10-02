module GamesView
    def get_player_name(game)
        begin 
            game.player_name = TTY::Prompt.new.ask("\nTo record you score, please enter your name: ".colorize(:light_yellow), help: '') do |name|
                name.validate(/\w/, "Please enter a valid name (no special characters)".colorize(:red))
            end
        end while game.player_name.nil?
    end
    
    def thanks(game)
        puts "\nThanks for playing, #{game.player_name}, your score was #{game.score}\n".colorize(:light_yellow)
        sleep(2)
    end
    
    def successful_save
        puts "Your score was saved successfully to the Leaderboard!".colorize(:white)
        sleep(2)
    end

    module_function :get_player_name, :thanks, :successful_save
end