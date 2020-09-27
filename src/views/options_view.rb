module OptionsView
    def show
        prompt = TTY::Prompt.new
        prompt_options = %w(Start\ New\ Game Exit\ to\ Menu)
        choice = prompt.select("\n\nWhat would you like to do?", prompt_options)
    end

    module_function :show
end