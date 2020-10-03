require_relative '../models/quote_generator'

module OptionsView
    def show
        TTY::Prompt.new.keypress("\nPress any key to continue".colorize(:light_magenta)) 
        quote_idx = QuoteGenerator.quote_index
        puts "\n\n\n#{QuoteGenerator.choose_quote(quote_idx)}\n".colorize(:white).italic
        sound_path = QuoteGenerator.quote_sound(quote_idx) # condensing this for next line
        Sound.new(sound_path).play unless sound_path.nil? # play quote sound from quotes array unless no sound available
        prompt = TTY::Prompt.new.select("\n\nWhat would you like to do?".colorize(:light_yellow), help: '') do |menu|
            menu.choice "Start New Game".colorize(:light_green), true
            menu.choice "Exit to Main Menu".colorize(:light_red), false
        end
    end

    module_function :show
end