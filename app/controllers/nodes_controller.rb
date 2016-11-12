class NodesController < ApplicationController
	before_action :authenticate_user!

	def index
		begin 
			query = RestClient.get "http://dlight.io:8080/v1/nodes/list", {:Authorization => " token #{session[:tesape_user_token]}"}		
			@nodes = JSON.parse(query.body)['nodes']
		end
	end

	def set_color
		begin 
			query = RestClient.post "http://dlight.io:8080/v1/node/GroveLedWs2812D0/clear/1/#{params[:color]}?access_token=#{params[:key_node]}",nil
			@result = JSON.parse(query.body)['nodes']
		end
	end

	def set_position
		begin 
			query = RestClient.post "http://dlight.io:8080/v1/node/GroveServoD#{params[:iservo]}/angle/#{params[:pos]}?access_token=#{params[:key_node]}",nil		
			@result = JSON.parse(query.body)['nodes']
		end
	end	

	def set_online

	end

end
