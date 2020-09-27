module RoundsView
    def new(round:, round_number:)
        system('clear')
        puts "Round: #{round_number}"
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
        puts "\nYou chose: #{round.player_selection}"
        sleep(0.5)
        puts "Your opponent chose: #{round.ai_selection}"
        sleep(1)
        puts "\nYou #{round.determine_result}"
        sleep(1)
        round.save!
        puts round.determine_result == 'lost' ? 'Round saved' : "Round saved, loading new round..."
        sleep(2)
    end

    module_function :new
end