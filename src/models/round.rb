class Round
    @rounds = []

    class << self
        def num_rounds
            @rounds.length + 1
        end

        def count_wins
            @rounds.count {|x| x.result == 'won!'}
        end

        def count_draws
            @rounds.count {|x| x.result == 'drew'}
        end

        def clear_rounds
            @rounds.clear
        end

        def next_id
            @rounds.length + 1
        end

        def save(round)
            round.id = next_id
            @rounds << round
        end
    end

    attr_reader :ai_input
    attr_accessor :id, :player_input, :player_selection, :ai_selection, :result 

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
        self.class.save(self)
    end
end