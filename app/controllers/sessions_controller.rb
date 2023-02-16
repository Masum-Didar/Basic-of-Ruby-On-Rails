class SessionsController < ApplicationController
  before_action :require_login, except: [:new, :create]

  def require_login
    if session[:user_id].nil?
      redirect_to login_path
    end
  end


  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id]=user.id
      redirect_to users_index_url, notice: 'Logged In'
    else
      flash.now.alert = 'Username or Password is Invalid'
      redirect_to login_path
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged Out'
  end

end