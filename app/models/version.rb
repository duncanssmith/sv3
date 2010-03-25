class Version < ActiveRecord::Base
	belongs_to :product
	belongs_to :publisher
	has_many :installations
end
