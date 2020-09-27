module ExitView
    def show
        system('clear') 
        to_exit = TTY::Prompt.new.select("Are you sure you want to exit?", %w(Yes No))
        to_exit == 'Yes' ? exit : to_exit
    end

    module_function :show
end