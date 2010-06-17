class ProductsController < ApplicationController
	load_and_authorize_resource
  # GET /products
  # GET /products.xml
  def index
    #@products = Product.all
		sort_by = (params[:order] == 'name' ? 'name asc' : 'publisher_id')

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

    @products = Product.paginate(:per_page => 6, :page => params[:page], :order => sort_by)

    respond_to do |format|
      format.js # index.js.erb
      format.html # index.html.erb
      format.xml  { render :xml => @products }
      format.json { render :json => @products } 
      format.yaml { render :yaml => @products } 
    end
  end

	def search
		@products = Product.search(params[:q])

    respond_to do |format|
      format.yaml  
      format.js  
      format.html  
      format.xml  { render :xml => @products }
    end
  end


  # GET /products/1
  # GET /products/1.xml
  def show
    @publisher = Publisher.find @product.publisher_id 
		@versions = Version.find :all, :conditions => "product_id = '#{@product.id}'"
    respond_to do |format|
      format.yaml 
      format.json 
      format.html # show.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
		#3.times { @product.versions.build }

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.xml
  def create

    respond_to do |format|
      if @product.save
        flash[:notice] = 'Product was successfully created.'
        format.html { redirect_to(@product) }
        format.xml  { render :xml => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update

    respond_to do |format|
      if @product.update_attributes(params[:product])
        flash[:notice] = 'Product was successfully updated.'
        format.html { redirect_to(@product) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(products_url) }
      format.xml  { head :ok }
    end
  end
end
