require_relative '../models/round'
require_relative '../models/game'
# require_relative '../views/rounds_view'


# instantiate Game
# run a loop --> each iteration starts a new round
# end loop when round result == loss
# ask player for name and set for Game instance
# calculate game score, date, time, etc.
# update highscores array/file

module RoundsController
    def new
        begin
            new_round = Round.new
            # ::Views::Rounds.new
            puts "\nPlease choose your desired faction:"
            puts "Options: | Sith | Jedi | Ewok |"
            player_string = gets.chomp.strip.downcase
            case player_string
            when 'sith'
                new_round.player_input = 0                
            when 'jedi'
                new_round.player_input = 1
            when 'ewok'
                new_round.player_input = 2
            end
            new_round.player_selection = new_round.selections(new_round.player_input)
            puts "You chose: #{new_round.player_selection}"
            puts "Your opponent chose: #{new_round.ai_selection}"
            puts "You #{new_round.determine_result}"
            new_round.save!
        end until new_round.result == 'lost'
    end

    module_function :new
end
