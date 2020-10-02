require 'colorize'
require_relative '../models/quote_generator'

# Testing Quote Generator
describe QuoteGenerator do    
    it "should return correct quote from external quotes file'" do
        expect(QuoteGenerator.choose_quote(0)).to eq "'[Beep], [beep] [boop], [whistle]' - R2-D2"
        expect(QuoteGenerator.choose_quote(1)).to eq "'ROOOOOOAAAAAAAR.' - Chewbacca"
    end

    it "should return correct sound byte path from external quotes file'" do
        expect(QuoteGenerator.quote_sound(0)).to eq 'media/R2D2-yeah.wav'
        expect(QuoteGenerator.quote_sound(1)).to eq 'media/chewy_roar.wav'
    end
end