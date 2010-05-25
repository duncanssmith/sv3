class HomeController < ApplicationController
  def index
  end

  def admin	  
	  @clients = Client.find (:all, :select => 'id, name')
		@client_id = current_user.client_id
		@role = current_user.role
		session[:selected_client] = 0 

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
  end

	private

	def find_selected_client
    session[:selected_client] ||= 0
	end

end
