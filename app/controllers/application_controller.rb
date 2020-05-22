class ApplicationController < ActionController::API
  include ActionController::Cookies

  def authenticated
    @current_user = User.find_by(id: session[:id])

    if !@current_user
      render json: { error: "Please log in" }, status: :unauthorized
    end
  end
end
