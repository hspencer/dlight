class NodesController < ApplicationController

	def index
		begin 
			query = RestClient.get "http://dlight.io/v1/nodes/list", {:Authorization => " token #{session[:tesape_user_token]}"}		
			@nodes = JSON.parse(query.body)['nodes']
		end
	end

	def set_color
		begin 
			# query = RestClient.get "http://wio.rizoma.io/v1/node/GenericAInA0/analog/#{params[:color]}", {:Authorization => " token #{session[:node]}"}		
			# @result = JSON.parse(query.body)['nodes']
		end
	end

	def set_position
		begin 
			# query = RestClient.get "http://wio.rizoma.io/v1/node/GenericAInA#{params[:iservo]}/servo/#{params[:pos]}", {:Authorization => " token #{session[:node]}"}		
			# @result = JSON.parse(query.body)['nodes']
		end
	end	

	def set_online

	end

end
