class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    User.create user_params
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:email, :password, :name)

  end
end
