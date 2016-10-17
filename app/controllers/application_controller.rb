class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_user!
    if session[:tesape_user_token].nil?
		redirect_to login_path
    end
  end

end
