class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user,only: [:show,:edit,:update]

  


  def show
    @recipes = @user.recipes
  end

 

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end


end
