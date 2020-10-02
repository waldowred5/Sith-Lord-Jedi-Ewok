require_relative '../models/round'
require_relative '../models/game'
require_relative '../views/highscores_view'

# Testing help message from Leaderboard prints when scores are empty
describe HighscoresView do
    let(:games_empty) {[]}

    it "should display 'no scores' message when no available scores" do
        expect{subject.show games: games_empty}.to output{
            "Leaderboard:".colorize(:light_yellow)
            "\nNo scores on the leaderboard to show!".colorize(:red)
        }.to_stdout
    end
end