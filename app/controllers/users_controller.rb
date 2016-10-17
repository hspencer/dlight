class UsersController < ApplicationController

	def login
		
	end

	def auth
		begin
			auth = RestClient.post 'http://dlight.io:8080/v1/user/login', {email:params[:email], password:params[:pass] }
			Rails.logger.debug JSON.parse(auth.body)
			session[:tesape_user_token] = JSON.parse(auth.body)['token']
			redirect_to root_path
		rescue
			redirect_to login_path
		end
	end

	def logout
		session[:tesape_user_token] = nil
		redirect_to login_path
	end
end
