class DashboardController < ApplicationController
	def index
		total = Licence.sum :total_cost_of_line_item
	end

	def show
	end

end
