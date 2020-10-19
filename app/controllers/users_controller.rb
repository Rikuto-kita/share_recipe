class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user,only: [:show,:edit,:update]

  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params) 
      redirect_to root_path
    else
      render 'edit'
    end
  end


  def show
    @recipes = @user.recipes
  end

  def likes
    @user = User.find_by(params[:id])

    likes = Like.where(user_id: current_user.id).pluck(:recipe_id)
    @like_list = recipe.find(likes) 
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end


end
