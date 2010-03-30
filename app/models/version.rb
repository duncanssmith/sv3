class Version < ActiveRecord::Base
	belongs_to :product
	validates_presence_of :name
	has_many :installations
end
