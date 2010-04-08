require 'test_helper'

class ProductTest < ActiveSupport::TestCase

	def test_should_delete_one_product
		assert_difference 'Product.count', -1 do
			products(:product_1).destroy
		end
	end

	def test_should_create_one_product
		assert_difference 'Product.count' do
			Product.create(:name => 'Armadillo', :fullname => 'Armadillo Cool', :publisher_id => 1, :serial => '123456', :sku => '1234567', :identifier => 'XYZ' )
		end
	end
	def test_should_have_working_associations
		assert_working_associations
	end
end
