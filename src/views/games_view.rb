module GamesView
    def new(game:)
        begin 
            game.player_name = TTY::Prompt.new.ask("\nTo record you score, please enter your name: ".colorize(:light_yellow), help: '') do |name|
                name.validate(/\w/, "Please enter a valid name (no special characters)".colorize(:red))
            end
        end while game.player_name.nil?
        game.wins = Round::ROUNDS.count {|x| x.result == 'won!'} 
        game.draws = Round::ROUNDS.count {|x| x.result == 'drew'} 
        game.score = game.wins * 100 + game.draws * 25
        system('clear')
        puts "\nThanks for playing, #{game.player_name}, your score was #{game.score}\n".colorize(:light_yellow)
        sleep(2)
        game.save!
        puts "Your score was saved successfully to the Leaderboard!".colorize(:white)
        sleep(2)
        Round::ROUNDS.clear
    end

    module_function :new
end