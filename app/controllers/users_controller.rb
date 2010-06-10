class UsersController < ApplicationController
	load_and_authorize_resource
  def new
    @user = User.new
    @clients = Client.find (:all, :select => 'id, name')
  end

	def create
    @user = User.new(params[:user])
    @clients = Client.find (:all, :select => 'id, name')
    if @user.save
      flash[:notice] = "Registration successful."
      redirect_to root_url
    else
      render :action => "new"
    end
  end

  def edit
    @user = current_user
    @clients = Client.find (:all, :select => 'id, name')
  end

  def update
    @user = current_user

    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated profile."
      redirect_to root_url
    else
      render :action => "edit" 
    end
  end

  def index
    @client_id = current_user.client_id

		if( ( session[:selected_client] ) && ( session[:selected_client] != 0) )
		  @client_index = session[:selected_client]
		else
			@client_index = @client_id
		end

    @clients = Client.find :all, :conditions => "id = '#{@client_index}'"
    @users = User.paginate(:per_page => 12, :page => params[:page], :conditions => "client_id = '#{@client_index}'")

    respond_to do |format|
      format.js # index.js.erb
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

end
