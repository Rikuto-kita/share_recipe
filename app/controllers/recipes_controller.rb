class RecipesController < ApplicationController

  def index
    @recipe = Recipe.all.order("created_at DESC")
  end

  def new
    @recipe =
  end

  def create
    if 
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def recipe_params
    params.require(:recipe).permit(:image,:name,:outline,:category_id,:foodstuff,:cook,).merge(user_id:current_user.id)
  end
end
