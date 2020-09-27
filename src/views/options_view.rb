module OptionsView
    def show 
        prompt = TTY::Prompt.new.select("\n\nWhat would you like to do?".colorize(:light_yellow), help: '') do |menu|
            menu.choice "Start New Game".colorize(:light_green), true
            menu.choice "Exit to Menu".colorize(:light_red), false
        end
    end

    module_function :show
end