require_relative '../models/quote_generator'

module OptionsView
    def show 
        puts "\n\n\n#{::QuoteGenerator.new.choose_quote}\n"
        prompt = TTY::Prompt.new.select("\n\nWhat would you like to do?".colorize(:light_yellow), help: '') do |menu|
            menu.choice "Start New Game".colorize(:light_green), true
            menu.choice "Exit to Main Menu".colorize(:light_red), false
        end
    end

    module_function :show
end