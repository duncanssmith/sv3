class Publisher < ActiveRecord::Base
	has_many :products
	has_many :versions, :through => :products
end
