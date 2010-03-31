class Version < ActiveRecord::Base
	belongs_to :product
	validates_presence_of :name
	has_many :installations
	attr_accessor :should_destroy

	def should_destroy?
		should_destroy.to_i == 1
	end
end
