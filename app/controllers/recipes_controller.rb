class RecipesController < ApplicationController
  before_action :authenticate_user!,except: [:index]
  before_action :set_recipe,only: [:show,:edit,:update,:destroy]

  def index
    @recipes = Recipe.all.order("created_at DESC")
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
    if @recipe.update(recipe_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    if @recipe.destroy
      redirect_to root_path
    else
      render 'show'
    end
  end

  def likes
    @user = current_user
    @likes = Like.where(user_id: @user.id).all
  end

  private

  def recipe_params
    params.require(:recipe).permit(:image,:name,:outline,:category_id,:foodstuff,:cook,).merge(user_id:current_user.id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
