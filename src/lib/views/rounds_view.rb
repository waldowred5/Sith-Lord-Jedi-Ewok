module RoundsView
    def input(round:, round_number:)
        system('clear')
        puts "Round: #{round_number}".colorize(:light_yellow)
        TTY::Prompt.new.select("\nPlease choose your desired faction:".colorize(:light_yellow), help: '') do |menu|
            menu.choice "Sith".colorize(:light_red), 0
            menu.choice "Jedi".colorize(:light_cyan), 1
            menu.choice "Ewok".colorize(:light_green), 2
        end
    end

    def display_results(round)
        print "\nYou chose: ".colorize(:light_yellow)
        sleep(0.5)
        puts round.player_selection
        sleep(0.5)
        print "Your opponent chose: ".colorize(:light_yellow)
        sleep(0.5)
        puts round.ai_selection
        sleep(1)
        puts "\nYou #{round.determine_result}".colorize(:light_yellow)
        Sound.new(Round.get_sound(round.result)).play     
    end

    def successful_save
        puts "\nRound saved successfully".colorize(:grey)
        TTY::Prompt.new.keypress("\nPress any key to continue".colorize(:light_magenta))
    end

    module_function :input, :display_results, :successful_save
end