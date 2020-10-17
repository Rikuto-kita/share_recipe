class UsersController < ApplicationController
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

  def delete
    
  end

  def show
    @name = current_user.name
    @profile = current_user.profile
    @recipes = current_user.recipes
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end


end