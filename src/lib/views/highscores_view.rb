require 'tty-table'

module HighscoresView
    def show(games:) 
        system('clear')
        puts "Leaderboard:".colorize(:light_yellow)
        return puts "\nNo scores on the leaderboard to show!".colorize(:red) if games.empty?
        headers = ['Player'.colorize(:light_blue), 'Score'.colorize(:light_magenta)]
        # top_10 stores the highest 10 scores in YAML, sorted in descending order
        top_10 = games.sort_by{|ary|ary[1]}.reverse[0..9]
        highscores = TTY::Table.new(header: headers, rows: top_10)
        puts highscores.render :unicode, alignments: [:left, :right]
    end

    module_function :show
end