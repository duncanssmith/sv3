class LicencesController < ApplicationController
	load_and_authorize_resource
  # GET /licences
  # GET /licences.xml
  def index
    @client_id = current_user.client_id

		if( ( session[:selected_client] ) && ( session[:selected_client] != 0) )
		  @client_index = session[:selected_client]
		else
			@client_index = @client_id
		end
		
    @clients ||= Client.find :all, :conditions => "id = '#{@client_index}'"

    @licences = Licence.paginate(:per_page => 6, :page => params[:page], :conditions => "client_id = '#{@client_index}'")

    respond_to do |format|
      format.html # index.html.erb
      format.js # index.html.js
      format.xml  { render :xml => @licences }
    end
  end

  # GET /licences/1
  # GET /licences/1.xml
  def show
    @client_id = current_user.client_id

		if( ( session[:selected_client] ) && ( session[:selected_client] != 0) )
		  @client_index = session[:selected_client]
		else
			@client_index = @client_id
		end

		@devices = Device.find :all, :conditions => "client_id = '#{@client_index}'"
    @licences_b = Array.new
		@installations = Array.new
		tmp_licence = Licence.new

		@devices.each do |d|
			d.installations.each do |i|
				@installations << Installation.find(i.id)
			end
		end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @licence }
    end
  end

  # GET /licences/new
  # GET /licences/new.xml
  def new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @licence }
    end
  end

  # GET /licences/1/edit
  def edit
  end

  # POST /licences
  # POST /licences.xml
  def create

    respond_to do |format|
      if @licence.save
        flash[:notice] = 'Licence was successfully created.'
        format.html { redirect_to(@licence) }
        format.xml  { render :xml => @licence, :status => :created, :location => @licence }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @licence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /licences/1
  # PUT /licences/1.xml
  def update

    respond_to do |format|
      if @licence.update_attributes(params[:licence])
        flash[:notice] = 'Licence was successfully updated.'
        format.html { redirect_to(@licence) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @licence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /licences/1
  # DELETE /licences/1.xml
  def destroy
    @licence.destroy

    respond_to do |format|
      format.html { redirect_to(licences_url) }
      format.xml  { head :ok }
    end
  end
end
