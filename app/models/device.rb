class Device < ActiveRecord::Base
	has_and_belongs_to_many :registers
	has_and_belongs_to_many :versions
	belongs_to :locations
end
