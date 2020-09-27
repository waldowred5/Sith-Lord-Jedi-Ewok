module RoundsView
    def new(round:)
        puts "\nPlease choose your desired faction:"
        puts "Options: | Sith | Jedi | Ewok |"
        player_string = gets.chomp.strip.downcase
        case player_string
        when 'sith'
            round.player_input = 0                
        when 'jedi'
            round.player_input = 1
        when 'ewok'
            round.player_input = 2
        end
        round.player_selection = round.selections(round.player_input)
        puts "You chose: #{round.player_selection}"
        puts "Your opponent chose: #{round.ai_selection}"
        puts "You #{round.determine_result}"
        round.save!
    end

    module_function :new
end