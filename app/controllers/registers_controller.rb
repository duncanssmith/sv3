class RegistersController < ApplicationController
	load_and_authorize_resource
  # GET /registers
  # GET /registers.xml
  def index

    @client_id = current_user.client_id


		if( ( session[:selected_client] ) && ( session[:selected_client] != 0) )
		  @client_index = session[:selected_client]
		else
			@client_index = @client_id
		end

      @clients = Client.find :all, :conditions => "id = '#{@client_index}'"

      @registers = Register.paginate(:per_page => 12, :page => params[:page], :conditions => "client_id = '#{@client_index}'" )

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @registers }
    end
  end


  # GET /registers/1
  # GET /registers/1.xml
  def show
		@devices = @register.devices
		@servers = @register.servers

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @register }
    end
  end


  # GET /registers/new
  # GET /registers/new.xml
  def new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @register }
    end
  end

  # GET /registers/1/edit
  def edit
  end

  # POST /registers
  # POST /registers.xml
  def create

    respond_to do |format|
      if @register.save
        flash[:notice] = 'Register was successfully created.'
        format.html { redirect_to(@register) }
        format.xml  { render :xml => @register, :status => :created, :location => @register }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @register.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registers/1
  # PUT /registers/1.xml
  def update

    respond_to do |format|
      if @register.update_attributes(params[:register])
        flash[:notice] = 'Register was successfully updated.'
        format.html { redirect_to(@register) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @register.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /registers/1
  # DELETE /registers/1.xml
  def destroy
    @register.destroy

    respond_to do |format|
      format.html { redirect_to(registers_url) }
      format.xml  { head :ok }
    end
  end
end
