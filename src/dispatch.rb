require_relative 'controllers/games_controller.rb'
require_relative 'views/rules_view.rb'
require_relative 'views/exit_view.rb'

def dispatch(cmd)
  case cmd
  when 'play'
    ::GamesController.new
  when 'rules'
    ::RulesView.display
  when 'highscores'
    # ::RecipesController.new
  when 'exit'
    ::ExitView.display
  end
end