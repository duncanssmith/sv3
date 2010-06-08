class VersionsController < ApplicationController
	load_and_authorize_resource
  # GET /versions
  # GET /versions.xml
	
	before_filter :find_product

  def index
    #@versions = Version.all
    @versions = @product.versions.paginate(:per_page => 6, :page => params[:page] )

    respond_to do |format|
      format.js # index.js.erb
      format.html # index.html.erb
      format.xml  { render :xml => @versions }
    end
  end

  # GET /versions/1
  # GET /versions/1.xml
  def show
		@version = @product.versions.find(params[:id])

    respond_to do |format|
      format.js # new.js.erb
      format.html # show.html.erb
      format.xml  { render :xml => @version }
    end
  end

  # GET /versions/new
  # GET /versions/new.xml
  def new
		@version = @product.version.find params[:product_id]

    respond_to do |format|
      format.js # new.js.erb
      format.html # new.html.erb
      format.xml  { render :xml => @version }
    end
  end

  # GET /versions/1/edit
  def edit
		@version = @product.versions.find params[:id]
  end

  # POST /versions
  # POST /versions.xml
  def create
    @version = @product.versions.new(params[:version])

    respond_to do |format|
      if @version.save
        flash[:notice] = 'Version was successfully created.'
        format.html { redirect_to([@product, @version]) }
        format.xml  { render :xml => @version, :status => :created, :location => [@product, @version]}
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /versions/1
  # PUT /versions/1.xml
  def update
    @version = @product.versions.find(params[:id])

    respond_to do |format|
      if @version.update_attributes(params[:version])
        flash[:notice] = 'Version was successfully updated.'
        format.html { redirect_to([@product,@version]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /versions/1
  # DELETE /versions/1.xml
  def destroy
		@version = @product.versions.find params[:id]
    @version.destroy

    respond_to do |format|
      format.html { redirect_to(versions_url) }
      format.xml  { head :ok }
    end
  end

	private

	def find_product
		@product = Product.find params[:product_id] 
	end

end
