module PublishersHelper

	def add_product_link(name)
		link_to_function name do |page|
		page.insert_html :bottom, :products, :partial => 'product', :object => Product.new
	  end
  end
end
