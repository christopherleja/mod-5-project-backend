class AuthController < ApplicationController
  before_action :authorized, only: [:autologin]


  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      render json: user
    else 
      render json: { error: "Invalid username or password"}, status: :unauthorized
    end

  end

  def autologin
    render json: @current_user
  end

  def logout
    reset_session

    render json: { message: "You're logged out" }
  end

end