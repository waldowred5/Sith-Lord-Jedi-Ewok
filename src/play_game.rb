class Match
    def initialize
        @player_selection
        @ai_selection
        @id
        @player_name
        @wins
        @draws
        @score = 0
        @date
        @result
    end

    def selections(choice)
        select_from = ['sith', 'jedi', 'ewok']
        select_from[choice]
    end

    def ai_choice_generator
        rand(3)
    end
end