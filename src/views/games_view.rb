module GamesView
    def new(game:)
        puts "\nWhat is your name?"
        game.player_name = gets.chomp.strip
        game.wins = Round::ROUNDS.count {|x| x.result == 'won!'} 
        game.draws = Round::ROUNDS.count {|x| x.result == 'drew'} 
        game.score = game.wins * 100 + game.draws * 25
        system('clear')
        puts "\nThanks for playing, #{game.player_name}, your score was #{game.score}\n\n"
        game.save!
        sleep(2)
        puts "Your score was saved to Highscores"
        ::Round::ROUNDS.clear
        sleep(2)
        puts "\nWhat would you like to do?\nOptions: play, menu\n\n"
    end

    module_function :new
end