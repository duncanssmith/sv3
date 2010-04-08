class Device < ActiveRecord::Base
	has_and_belongs_to_many :registers
	belongs_to :locations
end
