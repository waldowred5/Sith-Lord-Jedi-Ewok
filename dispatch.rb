require_relative 'controllers/matches_controller.rb'

def dispatch(cmd)
  case cmd
  when 'play'
    # instantiate Game
  when 'show'
    ::RecipesController.show params
  when 'new'
    ::RecipesController.new
  when 'edit'
    ::RecipesController.edit params
  when 'delete'
    ::RecipesController.destroy params
  end
end