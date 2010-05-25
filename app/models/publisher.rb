class Publisher < ActiveRecord::Base
	has_many :products, :dependent => :destroy
	validates_presence_of :name
	validates_associated :products
	after_update :save_products

	def product_attributes=(product_attributes)
		product_attributes.each do |attributes|
			products.build(attributes)
	  end
	end


	def existing_product_attributes=(product_attributes)
		products.reject(&:new_record?).each do |product|
			attributes = product.attributes[product.id.to_s]
			if attributes
				product.attributes = attributes
			else
				products.delete(product)
			end
	  end
	end

	def save_products
		products.each do |product|
      product.save(false)
		end
	end
end
