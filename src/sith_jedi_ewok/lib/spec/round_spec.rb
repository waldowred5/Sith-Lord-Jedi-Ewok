require_relative '../models/round'

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