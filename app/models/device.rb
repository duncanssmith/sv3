class Device < ActiveRecord::Base
	has_and_belongs_to_many :registers
	#has_and_belongs_to_many :versions
	has_many :installations
	has_many :licences, :through => :installations
	has_many :versions, :through => :installations, :uniq => true
	belongs_to :locations
end
