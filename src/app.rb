require 'tty-prompt'
require_relative 'dispatch'

begin
    system('clear')
    puts "Welcome to Sith-lord, Jedi, Ewok!"
    prompt_options = %w(Play\ Game Read\ Rules See\ Highscores Exit)
    choice = TTY::Prompt.new.select("What would you like to do?", prompt_options)
    dispatch choice
end until ['123'].include? choice