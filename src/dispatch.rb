require_relative 'controllers/app_controller'

def dispatch(cmd)
  case cmd
  when 'Play Game'
    ::AppController.play_game
  when 'Read Rules'
    ::AppController.show_rules
  when 'See Highscores'
    ::AppController.show_highscores
  when 'Exit'
    ::AppController.exit?
  end
end