class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

    helper_method :current_user

    protected
    def current_user
      @current_user ||= User.find session[:user_id]  if session[:user_id]
    end
    # above that will confirm a user that logs in

  def authorize
    unless current_user
      flash[:error] = "Unauthorized access. Please log in"
      redirect_to new_session_path
    end
  # only logged in people can reach different pages on site
  end

end

