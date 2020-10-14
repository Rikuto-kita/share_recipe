class RecipesController < ApplicationController
  before_action :set_recipe,only: [:show,:edit,:update]

  def index
    @recipe = Recipe.all.order("created_at DESC")
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @recipe.update
      redirect_to recipe_path
    else
      render 'edit'
    end
  end

  def delete
  end

  private

  def recipe_params
    params.require(:recipe).permit(:image,:name,:outline,:category_id,:foodstuff,:cook,).merge(user_id:current_user.id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
