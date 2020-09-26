require_relative 'controllers/rounds_controller.rb'
require_relative 'controllers/games_controller.rb'
require_relative 'views/rules_view.rb'
require_relative 'views/exit_view.rb'
require_relative 'views/highscores_view.rb'

def dispatch(cmd)
  case cmd
  when 'play'
    ::RoundsController.new
    ::GamesController.new
  when 'rules'
    ::RulesView.show
  when 'highscores'
    ::HighscoresView.show
  when 'exit'
    ::ExitView.show
  end
end