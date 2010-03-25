class Device < ActiveRecord::Base
	has_many :installations
	has_and_belongs_to_many :assets
	has_and_belongs_to_many :registers
end
