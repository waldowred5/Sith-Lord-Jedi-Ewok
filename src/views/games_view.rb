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
        puts "Your score was saved to Highscores"
        ::Round::ROUNDS.clear
    end

    module_function :new
end