require_relative '../match'

describe Match do
    it 'should return correct selection from array based on supplied index' do
        expect(subject.selections(0)).to eq 'sith'
        expect(subject.selections(1)).to eq 'jedi'
        expect(subject.selections(2)).to eq 'ewok'
    end

    it 'should have ai_randomizer return random number between 0 and 2 inclusive' do
        expect(subject.ai_randomizer).to be_between(0, 2)
    end

    # it 'should have @ai_selection save ai_choice' do
    #     expect(subject.ai_choice('sith')).to eq('sith')
    # end

    # it 'should have @ai_selection save ai_choice' do
    #     expect(subject.ai_choice_generator.selections.ai_choice.ai_selection).to eq('sith' || 'jedi' || 'ewok')
    # end
end