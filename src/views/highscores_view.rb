require 'tty-table'

module HighscoresView
    def show(games:) # <-- why does this not mutate the original GAMES array?
        system('clear')
        puts "\nLeaderboard:".colorize(:light_yellow)
        return puts "\nNo scores on the leaderboard to show!".colorize(:red) if games.empty?
        headers = ['Player'.colorize(:light_blue), 'Score'.colorize(:light_magenta)]
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