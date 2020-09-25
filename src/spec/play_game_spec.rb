require_relative '../play_game'

describe Match do
    it 'should return correct selection from array based on supplied index' do
        expect(subject.selections(0)).to eq 'sith'
        expect(subject.selections(1)).to eq 'jedi'
        expect(subject.selections(2)).to eq 'ewok'
    end

    it 'should have AI choice return random number between 0 and 2 inclusive' do
        expect(subject.ai_choice_generator).to be_between(0, 2)
    end

    # it 'should have AI select random number between 0 and 2 inclusive' do
    #     ai_choice_generator = Match.new
    #     expect(ai_choice_generator)
    # end
end