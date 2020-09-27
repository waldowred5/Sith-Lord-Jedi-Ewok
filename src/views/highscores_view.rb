require 'tty-table'

module HighscoresView
    def show(games:) # <-- why does this not mutate the original GAMES array?
        system('clear')
        puts "\nHighscores:"
        return puts "\nNo highscores to show!" if games.empty?
        headers = %w(Player Score)
        rows = build_rows games
        highscores = TTY::Table.new(header: headers, rows: rows)
        puts highscores.render :unicode, alignments: [:left, :center]
    end

    def self.build_rows(games)
        games.map do |game|
            [game.player_name, game.score]
        end
    end

    module_function :show
end