class ApplicationController < ActionController::API
  include ActionController::Cookies

  before_action :authorized
  
  def current_user
    @current_user = User.find_by(id: params[:user_id])
  end
  
  private
  
  def logged_in?
    !!current_user
  end
    

  def authorized
    render json: { error: "Please log in" }, status: :unauthorized unless logged_in?
  end

end
