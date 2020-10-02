require 'colorize'
require 'tty-prompt'
require 'tty-table'
require_relative '../models/round'
require_relative '../models/game'
require_relative '../views/highscores_view'

# Testing game logic in 'round.rb' returns correct results (win, lose, draw) for every player selection option (sith, jedi, ewok)
describe Round do
    it 'should correctly determine round result when player chooses Sith' do
        subject.player_input = 0
        case subject.ai_input
        when 0
            expect(subject.determine_result).to eq 'drew'
        when 1
            expect(subject.determine_result).to eq 'lost'
        when 2
            expect(subject.determine_result).to eq 'won!'
        end
    end

    it 'should correctly determine round result when player chooses Jedi' do
        subject.player_input = 1
        case subject.ai_input
        when 0
            expect(subject.determine_result).to eq 'won!'
        when 1
            expect(subject.determine_result).to eq 'drew'
        when 2
            expect(subject.determine_result).to eq 'lost'
        end
    end

    it 'should correctly determine round result when player chooses Ewok' do
        subject.player_input = 2
        case subject.ai_input
        when 0
            expect(subject.determine_result).to eq 'lost'
        when 1
            expect(subject.determine_result).to eq 'won!'
        when 2
            expect(subject.determine_result).to eq 'drew'
        end
    end
end


# Testing whether saved scores are printed to the 'View Leaderboard' screen correctly 
describe HighscoresView do
    let(:games) {[]}

    it "should display 'no scores' message when no available scores" do
        expect{subject.show games: games}.to output{
            "Leaderboard:".colorize(:light_yellow)
            "\nNo scores on the leaderboard to show!".colorize(:red)
        }.to_stdout
    end
end