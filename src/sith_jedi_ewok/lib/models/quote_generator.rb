class QuoteGenerator
    # for DEMO purposes only: see below under class method quote_index for more info
    # Use to force each quote + sound to be played one after another instead of being selected at random
    @fixed_idx = 0 # <-- comment out when switching to PRODUCTION
    
    @quotes = YAML.load(File.read("lib/media/quotes.yml"))
            
    class << self
        def quote_index
            @fixed_idx == 6 ? @fixed_idx = 0 : @fixed_idx += 1 # <-- # DEMO
            # rand(35) # <-- PRODUCTION
        end

        def choose_quote(idx)
            @quotes[idx][0]
        end

        def quote_sound(idx)
            @quotes[idx][1]
        end
    end
end