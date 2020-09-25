class Match
    attr_reader :id, :ai_randomizer
    attr_accessor :player_selection, :ai_selection, :result

    def initialize
        @id = #UUID
        @player_selection = nil
        @ai_randomizer = rand(3)
        @ai_selection = nil
        @result = nil
    end

    def selections(choice)
        select_from = ['sith', 'jedi', 'ewok']
        select_from[choice]
    end

    def ai_choice(selection)
        @ai_selection = selection
    end
end