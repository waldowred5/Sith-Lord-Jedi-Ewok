class QuoteGenerator
    def choose_quote
        quotes = [
            "'Help me, Obi-Wan Kenobi. You're my only hope.' - Leia Organa".colorize(:white).italic,
            "'I find your lack of faith disturbing.' - Darth Vader".colorize(:white).italic,
            "'It's the ship that made the Kessel run in less than twelve parsecs.' - Han Solo".colorize(:white).italic,
            "'The Force will be with you. Always.' - Obi-Wan Kenobi".colorize(:white).italic,
            "'Why, you stuck-up, half-witted, scruffy-looking nerf herder!' - Leia Organa".colorize(:white).italic,
            "'Now THIS is podracing' - Anakin Skywalker".colorize(:white).italic,
            "'I'll never turn to the dark side. You've failed, your highness. I am a Jedi, like my father before me.' - Luke Skywalker".colorize(:white).italic,
            "'There's always a bigger fish.' - Qui-Gon Jinn".colorize(:white).italic,
            "'You can't stop the change, any more than you can stop the suns from setting.' - Shmi Skywalker".colorize(:white).italic,
            "'In my experience there is no such thing as luck.' - Obi-Wan Kenobi".colorize(:white).italic,
            "'Stay on target.' - Davish Krail".colorize(:white).italic,
            "'Let me give you some advice. Assume everyone will betray you, and you will never be disappointed.' - Han Solo".colorize(:white).italic,
            "'Fear is the path to the dark side.' - Yoda".colorize(:white).italic,
            "'Be mindful of your thoughts Anakin. They’ll betray you.' - Obi-Wan Kenobi".colorize(:white).italic,
            "'Someday I will be the most powerful Jedi ever.' - Anakin Skywalker".colorize(:white).italic,
            "'May the force be with you.' - Qui-Gon Jinn, Mace Windu, Yoda, Obi-Wan Kenobi, Anakin Skywalker, Admiral Ackbar, Han Solo, Luke Skywalker, Darth Vader, Leia Organa, Amilyn Holdo, Finn".colorize(:white).italic,
            "'It's a trap!' - Admiral Ackbar".colorize(:white).italic,
            "'Fear is the path to the dark side. Fear leads to anger; anger leads to hate; hate leads to suffering. I sense much fear in you.' - Yoda".colorize(:white).italic,
            "'If you strike me down I shall become more powerful than you can possibly imagine.' - Obi-Wan Kenobi".colorize(:white).italic,
            "'Sometimes we must let go of our pride and do what is requested of us.' - Padmé Amidala".colorize(:white).italic,
            "'Always in motion is the future.' - Yoda".colorize(:white).italic,
            "'Search your feelings, you know it to be true.' - Darth Vader".colorize(:white).italic,
            "'Compassion, which I would define as unconditional love, is essential to a Jedi’s life. So you might say, that we are encouraged to love.' - Anakin Skywalker".colorize(:white).italic,
            "'Luke, I am your father.' - Darth Vader".colorize(:white).italic,
            "'Size matters not. Look at me. Judge me by my size, do you? And well you should not. For my ally is the Force, and a powerful ally it is.' - Yoda".colorize(:white).italic,
            "'Much to learn you still have… my old Padawan.' - Yoda".colorize(:white).italic,
            "'I have taught you everything I know. And you have become a far greater Jedi than I could ever hope to be.' - Obi-Wan Kenobi".colorize(:white).italic,
            "'Sir, the possibility of successfully navigating an asteroid field is approximately 3,720 to 1.' - C-3PO".colorize(:white).italic,
            "'Never tell me the odds.' - Han Solo".colorize(:white).italic,
            "'Master Kenobi, you disappoint me. Yoda holds you in such high esteem. Surely you can do better!' - Count Dooku".colorize(:white).italic,
            "'The ability to destroy a planet is insignificant next to the power of the Force.' - Darth Vader".colorize(:white).italic,
            "'[Beep], [beep] [boop], [whistle]' - R2-D2".colorize(:white).italic           
        ]
        quotes[rand(32)]
    end
end