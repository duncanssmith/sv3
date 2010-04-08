class PublishersController < ApplicationController
  # GET /publishers
  # GET /publishers.xml
  def index
    @publishers = Publisher.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @publishers }
    end
  end

  # GET /publishers/1
  # GET /publishers/1.xml
  def show
    @publisher = Publisher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @publisher }
    end
  end

  # GET /publishers/new
  # GET /publishers/new.xml
  def new
    @publisher = Publisher.new
#    @publisher.products.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @publisher }
    end
  end

  # GET /publishers/1/edit
  def edit
    @publisher = Publisher.find(params[:id])
  end

  # POST /publishers
  # POST /publishers.xml
  def create
    @publisher = Publisher.new(params[:publisher])

    respond_to do |format|
      if @publisher.save
        flash[:notice] = 'Publisher (and products) successfully created.'
        #format.html { redirect_to(@publisher) }
        format.html { redirect_to publisher_path }
        format.xml  { render :xml => @publisher, :status => :created, :location => @publisher }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @publisher.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /publishers/1
  # PUT /publishers/1.xml
  def update
		params[:publisher][:existing_product_attributes] ||= {}

    @publisher = Publisher.find(params[:id])

		if @publisher.update_attributes(params[:publisher])
			flash[:notice] = "Successfully updated publisher and products."
			redirect_to publisher_path(@publisher)
		else
			render :action => 'edit'
		end


    respond_to do |format|
      if @publisher.update_attributes(params[:publisher])
        flash[:notice] = 'Publisher was successfully updated.'
        format.html { redirect_to(@publisher) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @publisher.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /publishers/1
  # DELETE /publishers/1.xml
  def destroy
    @publisher = Publisher.find(params[:id])
    @publisher.destroy

    respond_to do |format|
      format.html { redirect_to(publishers_url) }
      format.xml  { head :ok }
    end
  end
end
