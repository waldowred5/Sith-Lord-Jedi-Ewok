class Game
    GAMES = []

    attr_accessor :id, :player_name, :wins, :draws, :score, :date, :time 
    
    def initialize
        @id = nil
        @player_name = nil
        @wins = 0
        @draws = 0
        @score = 0
        @date = nil #Today's Date
        @time = nil #current time
    end

    def save!
        @id = GAMES.length + 1
        GAMES << self
    end
end