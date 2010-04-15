class CompliancesController < ApplicationController
	load_and_authorize_resource
  # GET /compliances
  # GET /compliances.xml
  def index
    @compliances = Compliance.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @compliances }
    end
  end

  # GET /compliances/1
  # GET /compliances/1.xml
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @compliance }
    end
  end

  # GET /compliances/new
  # GET /compliances/new.xml
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @compliance }
    end
  end

  # GET /compliances/1/edit
  def edit
		#unauthorized! if cannot? :update, @compliance
  end

  # POST /compliances
  # POST /compliances.xml
  def create
    respond_to do |format|
      if @compliance.save
        flash[:notice] = 'Compliance was successfully created.'
        format.html { redirect_to(@compliance) }
        format.xml  { render :xml => @compliance, :status => :created, :location => @compliance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @compliance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /compliances/1
  # PUT /compliances/1.xml
  def update
    respond_to do |format|
      if @compliance.update_attributes(params[:compliance])
        flash[:notice] = 'Compliance was successfully updated.'
        format.html { redirect_to(@compliance) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @compliance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /compliances/1
  # DELETE /compliances/1.xml
  def destroy
    @compliance.destroy

    respond_to do |format|
      format.html { redirect_to(compliances_url) }
      format.xml  { head :ok }
    end
  end
end
