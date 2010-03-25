class Version < ActiveRecord::Base
	belongs_to :product
	belongs_to :publisher, :through => :product
	has_many :installations
end
