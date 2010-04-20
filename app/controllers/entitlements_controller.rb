class EntitlementsController < ApplicationController
	load_and_authorize_resource
  # GET /entitlements
  # GET /entitlements.xml
  def index
    @entitlements = Entitlement.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entitlements }
    end
  end

  # GET /entitlements/1
  # GET /entitlements/1.xml
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @entitlement }
    end
  end

  # GET /entitlements/new
  # GET /entitlements/new.xml
  def new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @entitlement }
    end
  end

  # GET /entitlements/1/edit
  def edit
  end

  # POST /entitlements
  # POST /entitlements.xml
  def create

    respond_to do |format|
      if @entitlement.save
        flash[:notice] = 'Entitlement was successfully created.'
        format.html { redirect_to(@entitlement) }
        format.xml  { render :xml => @entitlement, :status => :created, :location => @entitlement }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @entitlement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /entitlements/1
  # PUT /entitlements/1.xml
  def update

    respond_to do |format|
      if @entitlement.update_attributes(params[:entitlement])
        flash[:notice] = 'Entitlement was successfully updated.'
        format.html { redirect_to(@entitlement) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @entitlement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /entitlements/1
  # DELETE /entitlements/1.xml
  def destroy
    @entitlement.destroy

    respond_to do |format|
      format.html { redirect_to(entitlements_url) }
      format.xml  { head :ok }
    end
  end
end
