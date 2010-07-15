class InstallationsController < ApplicationController
	load_and_authorize_resource
  # GET /installations
  # GET /installations.xml
  def index
    @installations = Installation.all
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

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @installations }
    end
  end

  # GET /installations/1
  # GET /installations/1.xml
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @installation }
    end
  end

  # GET /installations/new
  # GET /installations/new.xml
  def new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @installation }
    end
  end

  # GET /installations/1/edit
  def edit
  end

  # POST /installations
  # POST /installations.xml
  def create

    respond_to do |format|
      if @installation.save
        flash[:notice] = 'Installation was successfully created.'
        format.html { redirect_to(@installation) }
        format.xml  { render :xml => @installation, :status => :created, :location => @installation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @installation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /installations/1
  # PUT /installations/1.xml
  def update

    respond_to do |format|
      if @installation.update_attributes(params[:installation])
        flash[:notice] = 'Installation was successfully updated.'
        format.html { redirect_to(@installation) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @installation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /installations/1
  # DELETE /installations/1.xml
  def destroy
    @installation.destroy

    respond_to do |format|
      format.html { redirect_to(installations_url) }
      format.xml  { head :ok }
    end
  end
end
