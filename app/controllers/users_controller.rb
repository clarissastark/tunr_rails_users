class UsersController < ApplicationController
  # index
  def index
    @users = User.all
  end

  # new
  def new
    @user = User.new
  end

  # create
  def create
    @user = User.create!(user_params)

    redirect_to @user
  end

  #show
  def show
    @user = User.find(params[:id])
  end

  # edit
  def edit
    @user = User.find(params[:id])
  end


  # update
  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    redirect_to @user
  end

  # destroy
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
