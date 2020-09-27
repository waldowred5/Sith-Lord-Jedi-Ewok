require_relative 'controllers/rounds_controller'
require_relative 'controllers/games_controller'
require_relative 'controllers/app_controller'
require_relative 'views/rules_view'
require_relative 'views/exit_view'
require_relative 'views/highscores_view'

def dispatch(cmd)
  case cmd
  when 'play'
    ::RoundsController.new
    ::GamesController.new
  when 'rules'
    ::RulesView.show
  when 'highscores'
    ::AppController.show_highscores
  when 'exit'
    ::ExitView.show
  end
end