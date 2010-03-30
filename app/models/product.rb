class Product < ActiveRecord::Base
	belongs_to :publisher
	has_many :versions
	validates_presence_of :name

	def version_attributes=(version_attributes)
	  version_attributes.each do |attributes|	
      versions.build(attributes)
		end
	end
end
