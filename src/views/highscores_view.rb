require 'tty-table'

module HighscoresView
    def show(games:) 
        system('clear')
        puts "Leaderboard:".colorize(:light_yellow)
        return puts "\nNo scores on the leaderboard to show!".colorize(:red) if games.empty?
        headers = ['Player'.colorize(:light_blue), 'Score'.colorize(:light_magenta)]
        all_scores = games.sort_by{|ary|ary[1]}.reverse
        top10 = all_scores[0..9]
        highscores = TTY::Table.new(header: headers, rows: top10)
        puts highscores.render :unicode, alignments: [:left, :right]
    end

    module_function :show
end