require_relative '../models/match'
require_relative '../models/game'
require_relative '../views/match_view'


# instantiate Game
# run a loop --> each iteration starts a new Match
# end loop when Match result == loss
# ask player for name and set for Game instance
# calculate game score, date, time, etc.
# update highscores array/file

module GamesController
    def new
        new_game = Game.new

        begin
            new_match = Match.new
            ::Views::Matches.new
            
            new_match.save!
        end until new_match.result == 'loss'
        p ::Match::MATCHES
    end
end
