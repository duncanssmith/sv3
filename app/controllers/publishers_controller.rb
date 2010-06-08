class PublishersController < ApplicationController
	load_and_authorize_resource
  # GET /publishers
  # GET /publishers.xml
  def index
    #@publishers = Publisher.all
	  @publishers_count = Publisher.count				
		sort_by = (params[:order] == 'description' ? 'description asc' : 'name')

    @publishers = Publisher.paginate(:per_page => 6, :page => params[:page], :order => sort_by )

    respond_to do |format|
      format.js # index.js.erb
      format.html # index.html.erb
      format.xml  { render :xml => @publishers }
    end
  end

  def index_selected

    @publishers = Publisher.paginate(:per_page => 6, :page => params[:page], :conditions => "id = '#{params[:id]}'" )

    respond_to do |format|
      format.js # index.js.erb
      format.html # index.html.erb
      format.xml  { render :xml => @publishers }
    end
  end



  # GET /publishers/1
  # GET /publishers/1.xml
  def show

		@products = Product.find :all, :conditions => "publisher_id = '#{@publisher.id}'"

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @publisher }
    end
  end

  # GET /publishers/new
  # GET /publishers/new.xml
  def new
#    @publisher.products.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @publisher }
    end
  end

  # GET /publishers/1/edit
  def edit
  end

  # POST /publishers
  # POST /publishers.xml
  def create

    respond_to do |format|
      if @publisher.save
        flash[:notice] = 'Publisher successfully created.'
        format.html { redirect_to(@publisher) }
        #format.html { redirect_to publisher_path }
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
    @publisher.destroy

    respond_to do |format|
      format.html { redirect_to(publishers_url) }
      format.xml  { head :ok }
    end
  end
end
