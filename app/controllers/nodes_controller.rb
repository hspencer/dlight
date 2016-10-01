class NodesController < ApplicationController

	def index
		begin 
			query = RestClient.get "http://wio.rizoma.io/v1/nodes/list", {:Authorization => " token #{session[:tesape_user_token]}"}		
			@nodes = JSON.parse(query.body)['nodes']
		end
	end

	def get_nodes
		
	end

	def get_state

	end

	def set_state

	end

	def set_online

	end

end
