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

		@software_usage_quantity = Hash['Microsoft Project', 354.0, 'Microsoft Visio', 325.0, 'All others', 138.0]
		@software_usage_cost = Hash['Microsoft Project', 75566.0, 'Microsoft Visio', 34352.0, 'All others', 13500.0]

		@ad1 = Register.count
		@ad2 = Server.count
		@ad3 = Licence.count
		@ad4 = Device.count

		@audit_data = Hash['Walkaround', @ad1, 'Network Discovery', @ad2, 'Fixed Assets', @ad3, 'Purchase Records', @ad4]

    @sum = @software_usage_quantity["Microsoft Project"] + @software_usage_quantity["Microsoft Visio"] + @software_usage_quantity["All others"] 

		@visio_percentage = ((@software_usage_quantity["Microsoft Visio"] / @sum) * 100)
		@project_percentage = ((@software_usage_quantity["Microsoft Project"]/@sum) * 100)
		@allother_percentage = ((@software_usage_quantity["All others"]/@sum) * 100)


		if @average_licence_cost == nil
			@average_licence_cost = 0
		end

# Graph Themes
		g_theme_00 = {
			:colors => ['#2b0', '#eb0', '#d30', '#4b0', '#29f', '#eb0', '#1ae'],
			:marker_color => '#aaa',
			:background_colors => ['#eaeaea', '#fff']
		}

		g_theme_01 = {
			:colors => ['#1ae', '#eb0','#4b0', '#cd0', '#29e', '#d3b', '#1ae'],
			:marker_color => '#aaa',
			:background_colors => ['#eaeaea', '#fff']
		}
# Graphs
		# Graph 0
		g0 = Gruff::Line.new
		g0.theme = g_theme_00
		g0.title = "Compliance Position by Product"
		g0.data("% Compliance", [65, 83, 84, 100])
		g0.labels = {0 => 'Month 1', 1 => 'Month 2', 2 => 'Month 3', 3 => 'Month 4'}
		g0.write('public/images/my_compliance_graph.png')

		# Graph 1
		g1 = Gruff::Bar.new
		g1.theme = g_theme_00
		g1.title = "Cost Savings (x GBP 10,000)"
		g1.data("Savings", [0, 10,  36, 58])
		g1.data("Unused Licence Cost", [35, 20, 9, 0])
		g1.data("Licence cost", [94, 70, 48, 35])
		g1.labels = {0 => 'Month 1', 1 => 'Month 2', 2 => 'Month 3', 3 => 'Month 4'}
		g1.write('public/images/my_savings_graph.png')

		# Graph 2
		g2 = Gruff::Pie.new
		g2.theme = g_theme_00
		g2.title = "RAG Risk Status"
		g2.data("Green", [@rag_green_items])
		g2.data("Amber", [@rag_amber_items])
		g2.data("Red",   [@rag_red_items])
		g2.labels = {0 => 'Month 1', 1 => 'Month 2', 2 => 'Month 3', 3 => 'Month 4'}
		g2.write('public/images/my_rag_status_graph.png')

		# Graph 3
		g3 = Gruff::Bar.new
		g3.theme = g_theme_00
		g3.title = "Most under-utilised product (qty)"
		g3.data("All others", [@software_usage_quantity["All others"]])
		g3.data("Microsoft Visio", [@software_usage_quantity["Microsoft Visio"]])
		g3.data("Microsoft Project", [@software_usage_quantity["Microsoft Project"]])
		g3.write('public/images/my_software_usage_graph_01.png')

		# Graph 4
		g4 = Gruff::Bar.new
		g4.theme = g_theme_00
		g4.title = "Most under-utilised product (est. cost £)"
		g4.data("All others", [@software_usage_cost["All others"]])
		g4.data("Microsoft Visio", [@software_usage_cost["Microsoft Visio"]])
		g4.data("Microsoft Project", [@software_usage_cost["Microsoft Project"]])
		g4.write('public/images/my_software_usage_graph_02.png')

		# Graph 5
		g5 = Gruff::Bar.new
		g5.theme = g_theme_00
		g5.title = "Audit data"
		g5.data("Walkaround", [@audit_data["Walkaround"]])
		g5.data("Network Discovery", [@audit_data["Network Discovery"]])
		g5.data("Fixed Assets", [@audit_data["Fixed Assets"]])
		g5.data("Purchase Records", [@audit_data["Purchase Records"]])
		g5.write('public/images/my_audit_data_graph_01.png')

	end

	private

	def find_selected_client
		session[:selected_client] ||= 0
	end

end
