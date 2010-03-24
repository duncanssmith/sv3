class Product < ActiveRecord::Base
	has_many :versions
	belongs_to :publisher
end
