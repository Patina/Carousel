class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :show, :destroy]
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
  end

  def show
  end

  def create
    @user = User.create(params[:user])
    if user.save
      redirect_to @user, notice: "New user created."
    else 
      render :new
    end
  end

  def update
    @user = User.update(params[:user])
    redirect_to @user, notice: "User updated."
  else
    render :edit
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice: "User deleted."
  end

private

def set_user
  @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :avatar)
  end
end




