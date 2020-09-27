module ExitView
    def show
        system('clear')
        exit_input = TTY::Prompt.new
        to_exit = exit_input.select("Are you sure you want to exit?", %w(Yes No))
        to_exit == 'Yes' ? exit : to_exit
    end

    module_function :show
end