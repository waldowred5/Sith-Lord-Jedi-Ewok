module GamesView
    def get_player_name(game:)
        begin 
            game.player_name = TTY::Prompt.new.ask("\nTo record you score, please enter your name: ".colorize(:light_yellow), help: '') do |name|
                name.validate(/\w/, "Please enter a valid name (no special characters)".colorize(:red))
            end
        end while game.player_name.nil?
    end
    
    def new(game:)
        system('clear')
        puts "\nThanks for playing, #{game.player_name}, your score was #{game.score}\n".colorize(:light_yellow)
        sleep(2)
        game.save!
        puts "Your score was saved successfully to the Leaderboard!".colorize(:white)
        sleep(2)
        Round.clear_rounds
    end

    module_function :new, :get_player_name
end