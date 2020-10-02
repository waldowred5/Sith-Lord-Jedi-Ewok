require 'colorize'
require 'tty-prompt'
require 'tty-table'
require_relative '../models/round'
require_relative '../models/game'
require_relative '../views/highscores_view'

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

describe HighscoresView do
    it 'should display no scores message when YAML is empty' do
        
    end
end


# describe GamesView do
#     let(:game) {Game.new}

#     it 'should return invalid player name help message' do
#         allow(XXXXXXX.to receive(:gets).and_return('!@#$'))
#         # allow(subject.get_player_name(game: game).to receive(:gets).and_return('!@#$'))
#         expect(name_check).to output("Please enter a valid name (no special characters)".colorize(:red)).to_stdout

#         # allow(view).to receive(:gets).and_return('Pudding', '5')
#         # expect{ view.new recipe: recipe }.to output(/New Recipe!/).to_stdout
#     end
# end

# describe Round do
#     it 'should return correct selection from array based on supplied index' do
#         expect(subject.selections(0)).to eq 'Sith'
#         expect(subject.selections(1)).to eq 'jedi'
#         expect(subject.selections(2)).to eq 'ewok'
#     end

# it 'should have ai_randomizer return random number between 0 and 2 inclusive' do
#     expect(subject.ai_randomizer).to be_between(0, 2)
# end

# it 'should have @ai_selection save ai_choice' do
#     expect(subject.ai_choice('sith')).to eq('sith')
# end

# it 'should have @ai_selection save ai_choice' do
#     expect(subject.ai_choice_generator.selections.ai_choice.ai_selection).to eq('sith' || 'jedi' || 'ewok')
# end
# end