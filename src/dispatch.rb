require_relative 'controllers/games_controller.rb'

def dispatch(cmd)
  case cmd
  when 'play'
    ::GamesController.new
  when 'show'
    # ::RecipesController.show params
  when 'new'
    # ::RecipesController.new
  when 'edit'
    # ::RecipesController.edit params
  when 'delete'
    # ::RecipesController.destroy params
  end
end