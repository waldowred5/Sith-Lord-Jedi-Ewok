require_relative '../models/match'
require_relative '../models/game'
require_relative '../views/match_view'


# instantiate Game
# run a loop --> each iteration starts a new Match
# end loop when Match result == loss
# ask player for name and set for Game instance
# calculate game score, date, time, etc.
# update highscores array/file

module GamesController
    def new
        begin
            new_match = Match.new
            # ::Views::Matches.new
            puts "\nPlease choose your desired faction:"
            puts "Options: | Sith | Jedi | Ewok |"
            player_string = gets.chomp.strip.downcase
            case player_string
            when 'sith'
                new_match.player_input = 0                
            when 'jedi'
                new_match.player_input = 1
            when 'ewok'
                new_match.player_input = 2
            end
            new_match.player_selection = new_match.selections(new_match.player_input)
            puts "You chose: #{new_match.player_selection}"
            puts "Your opponent chose: #{new_match.ai_selection}"
            puts "You #{new_match.determine_result}"
            new_match.save!
        end until new_match.result == 'lost'
        puts ''
        puts "What is your name?"
        player_name_input = gets.chomp.strip
        new_game = Game.new
        new_game.player_name = player_name_input
        new_game.score = ::Match::MATCHES.length - 1
        puts "Thanks for playing, #{new_game.player_name}, your score was #{new_game.score}\n\n"
    end

    module_function :new
end
