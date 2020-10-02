module ExitView
    def show
        system('clear') 
        Sound.new('media/swluke01.wav').play
        to_exit = TTY::Prompt.new.select("Are you sure you want to exit?".colorize(:light_yellow), help: '') do |menu|
            menu.choice "Yes".colorize(:light_green), true
            menu.choice "No".colorize(:light_red), false
        end
        to_exit == true ? exit : to_exit
    end

    module_function :show
end