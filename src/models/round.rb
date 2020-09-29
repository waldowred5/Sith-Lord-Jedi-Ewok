class Round
    ROUNDS = []

    attr_reader :id, :ai_input
    attr_accessor :player_input, :player_selection, :ai_selection, :result 

    def initialize
        @id = nil
        @player_input = nil        
        @player_selection = nil
        @ai_input = rand(3)
        @ai_selection = self.selections(@ai_input)
        @result = nil
    end

    def selections(choice)
        select_from = ['Sith'.colorize(:light_red), 'Jedi'.colorize(:light_cyan), 'Ewok'.colorize(:light_green)]
        select_from[choice]
    end

    def determine_result 
        math_check = @player_input - @ai_input
        case math_check
        when 0
            @result = 'drew'
        when 1, -2
            @result = 'won!'
        when -1, 2
            @result = 'lost'
        end
    end

    def save!
        @id = ROUNDS.length + 1
        ROUNDS << self
    end
end