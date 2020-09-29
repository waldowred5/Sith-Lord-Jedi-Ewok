module RoundsView
    def new(round:, round_number:)
        system('clear')
        puts "Round: #{round_number}".colorize(:light_yellow)
        round.player_input = TTY::Prompt.new.select("\nPlease choose your desired faction:".colorize(:light_yellow), help: '') do |menu|
            menu.choice "Sith".colorize(:light_red), 0
            menu.choice "Jedi".colorize(:light_cyan), 1
            menu.choice "Ewok".colorize(:light_green), 2
        end
        round.player_selection = round.selections(round.player_input)
        print "\nYou chose: ".colorize(:light_yellow)
        sleep(0.5)
        puts round.player_selection
        sleep(0.5)
        print "Your opponent chose: ".colorize(:light_yellow)
        sleep(0.5)
        puts round.ai_selection
        sleep(1)
        puts round_result = "\nYou #{round.determine_result}".colorize(:light_yellow)
        case round_result
        when "\e[0;93;49m\nYou lost\e[0m"
            Sound.new('src/media/WilhelmScream.wav').play 
        when "\e[0;93;49m\nYou drew\e[0m"
            Sound.new('src/media/lightsaberclash.mp3').play
        when "\e[0;93;49m\nYou won!\e[0m"
            Sound.new('src/media/lightsaberspin.mp3').play
        end
        round.save!
        puts "\nRound saved successfully".colorize(:grey)
        TTY::Prompt.new.keypress("\nPress any key to continue".colorize(:light_magenta))
    end

    module_function :new
end