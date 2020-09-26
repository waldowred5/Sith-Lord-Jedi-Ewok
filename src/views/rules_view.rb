module RulesView
    def display
        puts "\nRules:"
        puts "In a game of 'Sith-lord, Jedi, Ewok', players play a series of matches."
        puts "The game ends when you are defeated by the computer in any match."
        puts "Before each match, players choose a faction to represent."
        puts "Each faction will win against only ONE other faction."
        puts "The match results for each faction are as follows:"
        puts "- Sith enslaves Ewok"
        puts "- Ewok recruits Jedi"
        puts "- Jedi overpowers Sith\n"
        puts "Scoring:"
        puts "Every winning match scores 100 points and every draw scores 25 points\n"
        puts "\nWhat would you like to do?\nOptions: play, menu"
        input = gets.chomp.downcase.strip
        input == 'menu' ? input : ::GamesController.new
        puts ""
    end

    module_function :display
end

