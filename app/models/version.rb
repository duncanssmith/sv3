class Version < ActiveRecord::Base
	belongs_to :product
	belongs_to :devices
	validates_presence_of :name
	validates_presence_of :fullname
	validates_presence_of :product_id

	attr_accessor :should_destroy

	def should_destroy?
		should_destroy.to_i == 1
	end
end
