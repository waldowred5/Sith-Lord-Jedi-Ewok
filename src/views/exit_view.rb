module ExitView
    def show
        puts "\nAre you sure you want to exit?\n"
        exit_input = gets.chomp.downcase.strip
        exit_input == 'y' ? exit : exit_input
        puts ""
    end

    module_function :show
end