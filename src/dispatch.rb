require_relative 'controllers/app_controller'

def dispatch(cmd)
  case cmd
  when 'play'
    ::AppController.play_game
  when 'rules'
    ::AppController.show_rules
  when 'highscores'
    ::AppController.show_highscores
  when 'exit'
    ::AppController.exit?
  end
end