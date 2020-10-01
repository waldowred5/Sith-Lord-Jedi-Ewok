class QuoteGenerator
    # for DEMO purposes only: see below under class method quote_index for more info
    @fixed_idx = 0
    # ^ comment out when switching to PRODUCTION
    
    @quotes = [
        # Quotes with sound bytes (7)
        ["'[Beep], [beep] [boop], [whistle]' - R2-D2", 'src/lib/media/R2D2-yeah.wav'],    
        ["'ROOOOOOAAAAAAAR.' - Chewbacca", 'src/lib/media/chewy_roar.wav'],
        ["'What is thy bidding, my master?' - Darth Vader", 'src/lib/media/swvader04.wav'],
        ["'The Force will be with you. Always.' - Obi-Wan Kenobi", 'src/lib/media/force.wav'],
        ["'Laugh it up fuzzball.' - Han Solo", 'src/lib/media/laughfuzzball.wav'],
        ["'Why, you stuck-up, half-witted, scruffy-looking nerf herder!' - Leia Organa", 'src/lib/media/nerfherder.wav'],
        ["'It's a trap!' - Admiral Ackbar", 'src/lib/media/trap.mp3'],

        # Quotes without soundbytes (28)
        ["'Sir, the possibility of successfully navigating an asteroid field is approximately 3,720 to 1.' - C-3PO", nil],
        ["'Help me, Obi-Wan Kenobi. You're my only hope.' - Leia Organa", nil],
        ["'I find your lack of faith disturbing.' - Darth Vader", nil],
        ["'It's the ship that made the Kessel run in less than twelve parsecs.' - Han Solo", nil],
        ["'Now THIS is podracing' - Anakin Skywalker", nil],
        ["'I'll never turn to the dark side. You've failed, your highness. I am a Jedi, like my father before me.' - Luke Skywalker", nil],
        ["'There's always a bigger fish.' - Qui-Gon Jinn", nil],
        ["'You can't stop the change, any more than you can stop the suns from setting.' - Shmi Skywalker", nil],
        ["'In my experience there is no such thing as luck.' - Obi-Wan Kenobi", nil],
        ["'Stay on target.' - Davish Krail", nil],
        ["'Let me give you some advice. Assume everyone will betray you, and you will never be disappointed.' - Han Solo", nil],
        ["'Fear is the path to the dark side.' - Yoda", nil],
        ["'Be mindful of your thoughts Anakin. They’ll betray you.' - Obi-Wan Kenobi", nil],
        ["'Someday I will be the most powerful Jedi ever.' - Anakin Skywalker", nil],
        ["'May the force be with you.' - (Every Star Wars character in existence)", nil],
        ["'Fear is the path to the dark side. Fear leads to anger; anger leads to hate; hate leads to suffering. I sense much fear in you.' - Yoda", nil],
        ["'If you strike me down I shall become more powerful than you can possibly imagine.' - Obi-Wan Kenobi", nil],
        ["'Sometimes we must let go of our pride and do what is requested of us.' - Padmé Amidala", nil],
        ["'Always in motion is the future.' - Yoda", nil],
        ["'Search your feelings, you know it to be true.' - Darth Vader", nil],
        ["'Compassion, which I would define as unconditional love, is essential to a Jedi’s life. So you might say, that we are encouraged to love.' - Anakin Skywalker", nil],
        ["'Luke, I am your father.' - Darth Vader", nil],
        ["'Size matters not. Look at me. Judge me by my size, do you? And well you should not. For my ally is the Force, and a powerful ally it is.' - Yoda", nil],
        ["'Much to learn you still have… my old Padawan.' - Yoda", nil],
        ["'I have taught you everything I know. And you have become a far greater Jedi than I could ever hope to be.' - Obi-Wan Kenobi", nil],
        ["'Never tell me the odds.' - Han Solo", nil],
        ["'Master Kenobi, you disappoint me. Yoda holds you in such high esteem. Surely you can do better!' - Count Dooku", nil],
        ["'The ability to destroy a planet is insignificant next to the power of the Force.' - Darth Vader", nil]  
    ]   
        
    class << self
        def quote_index
            # DEMO: Use to force each quote + sound to be played one after another instead of being selected at random
            @fixed_idx == 6 ? @fixed_idx = 0 : @fixed_idx += 1
            
            # PRODUCTION
            # rand(35)
        end

        def choose_quote(idx)
            @quotes[idx][0]
        end

        def quote_sound(idx)
            @quotes[idx][1]
        end
    end
end