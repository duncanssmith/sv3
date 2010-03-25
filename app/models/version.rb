class Version < ActiveRecord::Base
	belongs_to :products
	has_many :installations
end
