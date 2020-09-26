module Views
    module Matches
        def new
            puts "Please choose your desired faction:"
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
            puts new_match.determine_result
        end
    end
end