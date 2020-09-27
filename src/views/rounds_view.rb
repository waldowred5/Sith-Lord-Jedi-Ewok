module RoundsView
    def new(round:, round_number:)
        system('clear')
        puts "Round: #{round_number}"
        faction_options = %w(Sith Jedi Ewok)
        faction = TTY::Prompt.new.select("\nPlease choose your desired faction:", faction_options)
        case faction
        when 'Sith'
            round.player_input = 0                
        when 'Jedi'
            round.player_input = 1
        when 'Ewok'
            round.player_input = 2
        end
        round.player_selection = round.selections(round.player_input)
        puts "\nYou chose: #{round.player_selection}"
        puts "Your opponent chose: #{round.ai_selection}"
        puts "\nYou #{round.determine_result}"
        round.save!
        puts "\nRound saved"
        next_round = TTY::Prompt.new.keypress("\nPress any key to continue")
    end

    module_function :new
end