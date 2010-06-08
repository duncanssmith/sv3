class ServersController < ApplicationController
	load_and_authorize_resource
  # GET /servers
  # GET /servers.xml
  def index
    @client_id = current_user.client_id


		if( ( session[:selected_client] ) && ( session[:selected_client] != 0) )
		  @client_index = session[:selected_client]
		else
			@client_index = @client_id
		end

      @clients = Client.find :all, :conditions => "id = '#{@client_index}'"

		  @registers = Register.find :all, :conditions => "client_id = '#{@client_index}'", :order => "id"
      @servers = Server.paginate(:per_page => 12, :page => params[:page], :conditions => "client_id = '#{@client_index}'" )

    respond_to do |format|
      format.js # index.js.erb
      format.html # index.html.erb
      format.xml  { render :xml => @servers }
    end
  end

	def search
		@servers = Server.search(params[:q])

    respond_to do |format|
      format.js # index.js.erb
      format.html # index.html.erb
      format.xml  { render :xml => @servers }
    end
  end



  # GET /servers/1
  # GET /servers/1.xml
  def show
    @client_id = current_user.client_id
    @server = Server.find(params[:id])
		@registers = @server.registers

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @server }
    end
  end

  # GET /servers/new
  # GET /servers/new.xml
  def new
    @server = Server.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @server }
    end
  end

  # GET /servers/1/edit
  def edit
    @client_id = current_user.client_id
    @server = Server.find(params[:id])
  end

  # POST /servers
  # POST /servers.xml
  def create
    @server = Server.new(params[:server])

    respond_to do |format|
      if @server.save
        flash[:notice] = 'Server was successfully created.'
        format.html { redirect_to(@server) }
        format.xml  { render :xml => @server, :status => :created, :location => @server }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @server.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /servers/1
  # PUT /servers/1.xml
  def update
    @server = Server.find(params[:id])

    respond_to do |format|
      if @server.update_attributes(params[:server])
        flash[:notice] = 'Server was successfully updated.'
        format.html { redirect_to(@server) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @server.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /servers/1
  # DELETE /servers/1.xml
  def destroy
    @server.destroy

    respond_to do |format|
      format.html { redirect_to(servers_url) }
      format.xml  { head :ok }
    end
  end
end
