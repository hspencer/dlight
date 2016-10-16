class UsersController < ApplicationController

	def login
		render layout: "login"
	end

	def auth
		begin
			auth = RestClient.post 'http://dlight.io/v1/user/login', {email: "rodrigo@rizoma.io", password:"1dvuvvdu" }
			session[:tesape_user_token] = JSON.parse(auth.body)['token']
			redirect_to root_path
		rescue
			redirect_to login_path
		end
	end
end
