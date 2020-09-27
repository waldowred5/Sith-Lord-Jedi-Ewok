module RulesView
    def show
        system('clear')
        puts "\nRules:".colorize(:light_magenta)
        puts "\nIn a game of 'Sith-lord, Jedi, Ewok', players play a series of rounds.".colorize(:light_yellow)
        puts "The game ends when you are defeated by the computer in any round.".colorize(:light_yellow)
        puts "Before each round, players choose a faction to represent.".colorize(:light_yellow)
        puts "Each faction will win against only ONE other faction.".colorize(:light_yellow)
        puts "\nThe round results for each faction are as follows:".colorize(:light_yellow)
        puts "- ".colorize(:light_yellow) + "Sith".colorize(:light_red) + " enslaves ".colorize(:light_yellow) + "Ewok".colorize(:light_green)
        puts "- ".colorize(:light_yellow) + "Ewok".colorize(:light_green) + " recruits ".colorize(:light_yellow) + "Jedi".colorize(:light_cyan)
        puts "- ".colorize(:light_yellow) + "Jedi".colorize(:light_cyan) + " overpowers ".colorize(:light_yellow) + "Sith".colorize(:light_red)
        puts "\nScoring:".colorize(:light_magenta)
        puts "\nEvery winning round scores 100 points and every draw scores 25 points".colorize(:light_yellow)
    end

    module_function :show
end

