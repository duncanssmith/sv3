class HomeController < ApplicationController

	def index
	end

	def admin	  

		if current_user
			@client_id = current_user.client_id
			@role = current_user.role
	# @clients = Client.find (:all, :select => 'id, name')
		end

		if( ( session[:selected_client] ) && ( session[:selected_client] != 0) )
			@client_index = session[:selected_client]
		else
			@client_index = @client_id
		end

	@clients = Client.find :all, :conditions => "id = '#{@client_index}'"

		if params['client']
			@selected_client = params['client']
			@client = Client.find @selected_client
			#@client_name = @clients[params['client']]
			#current_user.set_selected_client_id(@client)
			session[:selected_client] = @selected_client
		else
			@selected_client = 0 
		end

	end

	def dashboard
		if current_user
			@client_id = current_user.client_id
	end

		if((session[:selected_client])&&(session[:selected_client] != 0))
			@client_index = session[:selected_client]
		else
			@client_index = @client_id
		end

		@clients = Client.find :all, :conditions => "id = '#{@client_index}'"

		if params['client']
			@selected_client = params['client']
			@client = Client.find @selected_client
			#@client_name = @clients[params['client']]
			#current_user.set_selected_client_id(@client)
			session[:selected_client] = @selected_client
		else
			@selected_client = 0 
		end

		@total_licence_cost = Licence.sum :total_cost_of_line_item, :conditions => "client_id = '#{@client_index}'"
		@total_licences = Licence.count :conditions => "client_id = '#{@client_index}'"

		@average_licence_cost = (Licence.average :total_cost_of_line_item, :conditions => "client_id = '#{@client_index}'") / 10
		@total_over_licenced_cost = (Licence.sum :maintenance_pa, :conditions => "client_id = '#{@client_index}'") * 3.35

		@total_under_licenced_cost = (Licence.sum :cost_unit, :conditions => "client_id = '#{@client_index}'") / 930

		@rag_red_items = Server.count :conditions => "scope = 'RED' and client_id = '#{@client_index}'" 
		@rag_amber_items = Server.count :conditions => "scope = 'AMBER' and client_id = '#{@client_index}'"
		@rag_green_items = Server.count :conditions => "scope = 'GREEN' and client_id = '#{@client_index}'"

		if @average_licence_cost == nil
			@average_licence_cost = 0
		end

		g_theme_00 = {
			:colors => ['#2b0', '#eb0', '#d30', '#3bb000', '#1e90ff', '#efba00', '#0aaafd'],
			:marker_color => '#aaa',
			:background_colors => ['#eaeaea', '#fff']
		}

		g_theme_02 = {
			:colors => ['#cd0', '#29e', '#d3b', '#1ae'],
			:marker_color => '#aaa',
			:background_colors => ['#eaeaea', '#fff']
		}

		g_theme_01 = {
			:colors => ['#579', '#692', '#ca0', '#36a'],
			:marker_color => '#aaa',
			:background_colors => ['#eaeaea', '#fff']
		}

		g0 = Gruff::Line.new
		g0.theme = g_theme_00
		g0.title = "Compliance Position by Product"
		g0.data("% Compliance", [65, 83, 84, 100])
		g0.data("% Non-comp", [35, 53, 94, 52])
		g0.data("% Upsy Daisy", [25, 13, 54, 87])
		g0.data("% Iggle Piggle", [85, 73, 54, 56])
		g0.labels = {0 => 'Month 1', 1 => 'Month 2', 2 => 'Month 3', 3 => 'Month 4'}
		g0.write('public/images/my_compliance_graph.png')

		g1 = Gruff::Bar.new
		g1.theme = g_theme_00
		g1.title = "Cost Savings (x GBP 10,000)"
		g1.data("Savings", [0, 10,  36, 58])
		g1.data("Unused Licence Cost", [35, 20, 9, 0])
		g1.data("Licence cost", [94, 70, 48, 35])
		g1.labels = {0 => 'Month 1', 1 => 'Month 2', 2 => 'Month 3', 3 => 'Month 4'}
		g1.write('public/images/my_savings_graph.png')

		g2 = Gruff::Pie.new
		g2.theme = g_theme_00
		g2.title = "RAG Risk Status"
		g2.data("Green", [@rag_green_items])
		g2.data("Amber", [@rag_amber_items])
		g2.data("Red",   [@rag_red_items])
		g2.labels = {0 => 'Month 1', 1 => 'Month 2', 2 => 'Month 3', 3 => 'Month 4'}
		g2.write('public/images/my_rag_status_graph.png')

		g3 = Gruff::Bar.new
		g3.theme = g_theme_01
		g3.title = "Most under-utilised product (quantity)"
		g3.data("All Others", [203])
		g3.data("Microsoft Visio", [322])
		g3.data("Microsoft Project", [354])
		g3.write('public/images/my_software_usage_graph_01.png')

		g4 = Gruff::Bar.new
		g4.theme = g_theme_01
		g4.title = "Most under-utilised product (estimated cost £)"
		g4.data("All Others", [13500])
		g4.data("Microsoft Visio", [34352])
		g4.data("Microsoft Project", [75566])
		g4.write('public/images/my_software_usage_graph_02.png')

	end

	private

	def find_selected_client
		session[:selected_client] ||= 0
	end

end
