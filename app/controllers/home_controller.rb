class HomeController < ApplicationController

  def index
  end

  def admin	  

		if current_user
		  @client_id = current_user.client_id
		  @role = current_user.role
	    @clients = Client.find (:all, :select => 'id, name')
    end

		if( ( session[:selected_client] ) && ( session[:selected_client] != 0) )
		  @client_index = session[:selected_client]
		else
			@client_index = @client_id
		end

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


		@total_licence_cost = Licence.sum :total_cost_of_line_item, :conditions => "client_id = '#{@client_index}'"
		@total_licences = Licence.count :conditions => "client_id = '#{@client_index}'"
		@average_licence_cost = Licence.average :total_cost_of_line_item, :conditions => "client_id = '#{@client_index}'"

		@rag_red_items = Server.count :conditions => "scope = 'RED' and client_id = '#{@client_index}'" 
		@rag_amber_items = Server.count :conditions => "scope = 'AMBER' and client_id = '#{@client_index}'"
		@rag_green_items = Server.count :conditions => "scope = 'GREEN' and client_id = '#{@client_index}'"

		if @average_licence_cost == nil
		  @average_licence_cost = 0
    end

  end

	private

	def find_selected_client
    session[:selected_client] ||= 0
	end

end
