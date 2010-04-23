class LicencesController < ApplicationController
	load_and_authorize_resource
  # GET /licences
  # GET /licences.xml
  def index
    @licences = Licence.paginate(:per_page => 4, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @licences }
    end
  end

  # GET /licences/1
  # GET /licences/1.xml
  def show

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
