require_relative 'controllers/app_controller'

def dispatch(choice)
  case choice
  when 0
    AppController.play_game
  when 1
    AppController.show_rules
  when 2
    AppController.show_highscores
  when 3
    AppController.exit?
  end
end