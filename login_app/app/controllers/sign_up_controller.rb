class SignUpController < ApplicationController
  # redirect_to login_path, notice: 'Signed Up!'
  before_action :require_login, except: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, notice: 'Signed Up!'
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end
end