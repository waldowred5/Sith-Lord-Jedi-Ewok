require 'yaml'

class Game
    @games = YAML.load(File.read("games.yml")) rescue []

    class << self
        def map
            @games.map { |game_ary| yield game_ary }
        end

        def next_id
            @games.length + 1
        end

        def save(game)
            game.id = next_id
            @games << game
            File.open("games.yml", "w") { |file| file.write(@games.to_yaml) }
        end
    end

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
        self.class.save(self)
    end
end