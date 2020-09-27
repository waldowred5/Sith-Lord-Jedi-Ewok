module OptionsView
    def show 
        prompt_options = %w(Start\ New\ Game Exit\ to\ Menu)
        prompt = TTY::Prompt.new.select("\n\nWhat would you like to do?", prompt_options)
    end

    module_function :show
end