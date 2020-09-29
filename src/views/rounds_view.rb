module RoundsView
    def new(round:, round_number:)
        system('clear')
        puts "Round: #{round_number}".colorize(:light_yellow)
        faction = TTY::Prompt.new.select("\nPlease choose your desired faction:".colorize(:light_yellow), help: '') do |menu|
            menu.choice "Sith".colorize(:light_red), 0
            menu.choice "Jedi".colorize(:light_cyan), 1
            menu.choice "Ewok".colorize(:light_green), 2
        end
        round.player_input = faction
        round.player_selection = round.selections(round.player_input)
        print "\nYou chose: ".colorize(:light_yellow)
        puts round.player_selection
        print "Your opponent chose: ".colorize(:light_yellow)
        puts round.ai_selection
        puts round_result = "\nYou #{round.determine_result}".colorize(:light_yellow)
        round_result == "\e[0;93;49m\nYou lost\e[0m" ? Sound.new('src/media/WilhelmScream.wav').play : round_result
        round.save!
        puts "\nRound saved successfully".colorize(:grey)
        next_round = TTY::Prompt.new.keypress("\nPress any key to continue".colorize(:light_magenta))
    end

    module_function :new
end