require_relative '../models/round'
require_relative '../models/game'

# instantiate Game
# run a loop --> each iteration starts a new round
# end loop when round result == loss
# ask player for name and set for Game instance
# calculate game score, date, time, etc.
# update highscores array/file

module GamesController
    def new
        begin
            new_game = Game.new
            puts "\nWhat is your name?"
            player_name_input = gets.chomp.strip
            new_game.player_name = player_name_input
            # new_game.score = ::Round::ROUNDS.length - 1
            new_game.wins = Round::ROUNDS.count {|x| x.result == 'won!'} 
            puts new_game.wins
            new_game.draws = Round::ROUNDS.count {|x| x.result == 'drew'} 
            puts new_game.draws
            new_game.score = new_game.wins * 100 + new_game.draws * 25
            puts "Thanks for playing, #{new_game.player_name}, your score was #{new_game.score}\n\n"
            new_game.save!
            ::Round::ROUNDS.clear
            p ::Game::GAMES
            puts "\nWhat would you like to do?\nOptions: play, menu\n\n"
            input = gets.chomp.downcase.strip
            input == 'menu' ? input : ::RoundsController.new
        end until input == 'menu'
    end

    module_function :new
end