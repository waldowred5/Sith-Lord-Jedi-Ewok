module GamesView
    def new(game:)
        puts "\nWhat is your name?"
        player_name_input = gets.chomp.strip
        game.player_name = player_name_input
        game.wins = Round::ROUNDS.count {|x| x.result == 'won!'} 
        game.draws = Round::ROUNDS.count {|x| x.result == 'drew'} 
        game.score = game.wins * 100 + game.draws * 25
        puts "Thanks for playing, #{game.player_name}, your score was #{game.score}\n\n"
        game.save!
        ::Round::ROUNDS.clear
        puts "\nWhat would you like to do?\nOptions: play, menu\n\n"
    end

    module_function :new
end