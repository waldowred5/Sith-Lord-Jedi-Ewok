require 'tty-table'

module HighscoresView
    def show(games:) # <-- why does this not mutate the original GAMES array?
        system('clear')
        options = "\nWhat would you like to do?\nOptions: play, menu\n\n"
        puts "\nHighscores:\n"
        return puts "No highscores to show!\n#{options}" if games.empty?
        headers = %w[Player Score]
        rows = build_rows games
        highscores = TTY::Table.new(header: headers, rows: rows)
        puts highscores.render :unicode, alignments: [:left, :center]
        puts options
    end

    def self.build_rows(games)
        games.map do |game|
            [game.player_name, game.score]
        end
    end

    module_function :show
end