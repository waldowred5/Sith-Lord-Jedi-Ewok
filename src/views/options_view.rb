require_relative '../models/quote_generator'

module OptionsView
    def show 
        puts current_quote = "\n\n\n#{::QuoteGenerator.new.choose_quote}\n"
        case current_quote
        when /R2-D2/
            Sound.new('src/media/R2D2-yeah.wav').play
        when /ROOOOOOAAAAAAAR/
            Sound.new('src/media/chewy_roar.wav').play
        when /bidding/
            Sound.new('src/media/swvader04.wav').play
        when /The Force will be with you. Always./
            Sound.new('src/media/force.wav').play
        when /fuzzball/
            Sound.new('src/media/laughfuzzball.wav').play
        when /nerf/
            Sound.new('src/media/nerfherder.wav').play
        when /trap/
            Sound.new('src/media/trap.mp3').play
        end
        prompt = TTY::Prompt.new.select("\n\nWhat would you like to do?".colorize(:light_yellow), help: '') do |menu|
            menu.choice "Start New Game".colorize(:light_green), true
            menu.choice "Exit to Main Menu".colorize(:light_red), false
        end
    end

    module_function :show
end