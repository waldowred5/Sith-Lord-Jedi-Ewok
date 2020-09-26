module RulesView
    def show
        puts "\nRules:"
        puts "In a game of 'Sith-lord, Jedi, Ewok', players play a series of rounds."
        puts "The game ends when you are defeated by the computer in any round."
        puts "Before each round, players choose a faction to represent."
        puts "Each faction will win against only ONE other faction."
        puts "The round results for each faction are as follows:"
        puts "- Sith enslaves Ewok"
        puts "- Ewok recruits Jedi"
        puts "- Jedi overpowers Sith\n"
        puts "Scoring:"
        puts "Every winning round scores 100 points and every draw scores 25 points\n"
        puts "\nWhat would you like to do?\nOptions: play, menu"
        input = gets.chomp.downcase.strip
        input == 'menu' ? input : ::GamesController.new
        puts ""
    end

    module_function :show
end

