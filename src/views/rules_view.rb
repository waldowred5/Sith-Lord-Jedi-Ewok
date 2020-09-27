module RulesView
    def show
        system('clear')
        puts "\nRules:"
        puts "\nIn a game of 'Sith-lord, Jedi, Ewok', players play a series of rounds."
        puts "The game ends when you are defeated by the computer in any round."
        puts "Before each round, players choose a faction to represent."
        puts "Each faction will win against only ONE other faction."
        puts "\nThe round results for each faction are as follows:"
        puts "- Sith enslaves Ewok"
        puts "- Ewok recruits Jedi"
        puts "- Jedi overpowers Sith"
        puts "\nScoring:"
        puts "\nEvery winning round scores 100 points and every draw scores 25 points"
    end

    module_function :show
end

