class HomeController < ApplicationController
  def index
  end

  def admin	  
	  @clients = Client.find (:all, :select => 'id, name')
		@client_id = current_user.client_id
		@role = current_user.role

		if params['client']
		  @selected_client = params['client']
			@client = Client.find @selected_client
			#@client_name = @clients[params['client']]
      #current_user.set_selected_client_id(@client)
		else
		  @selected_client = 0 
		end

  end

  def dashboard
  end

end
