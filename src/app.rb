require_relative 'dispatch'

begin
    system('clear')
    puts "Welcome to Sith-lord, Jedi, Ewok!"
    puts "What would you like to do?"
    puts "Options: (play, rules, highscores, exit):"
    input = gets.chomp.downcase.strip
    dispatch input
end until ['123'].include? input