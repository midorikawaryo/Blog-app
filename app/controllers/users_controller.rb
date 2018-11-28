class UsersController < ApplicationController
before_action :login_user, only: [ :show, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @favorites_blogs = @user.favorite_blogs
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,:password_confirmation)
  end
end

def login_user
  if current_user.nil?
    redirect_to new_session_path, notice: "ログインしてください"
  end
end
