class Match
    MATCHES = []

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
        select_from = ['sith', 'jedi', 'ewok']
        select_from[choice]
    end

    def determine_result 
        math_check = @player_input - @ai_input
        case math_check
        when 0
            @result = 'draw'
        when 1, -2
            @result = 'win'
        when -1, 2
            @result = 'loss'
        end
    end

    def save!
        @id = MATCHES.length + 1
        MATCHES << self
    end
end


p game1 = Match.new
puts "Please choose: 0 = Sith, 1 = Jedi, 2 = Ewok"
game1.player_input = gets.chomp.to_i
game1.player_selection = game1.selections(game1.player_input)
puts game1.determine_result
game1.save!
p Match::MATCHES