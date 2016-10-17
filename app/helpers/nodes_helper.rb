module NodesHelper

	def online_str(status)
		if status == true
			"online"
		else
			"offline"
		end
	end

end
