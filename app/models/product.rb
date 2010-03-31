class Product < ActiveRecord::Base
	belongs_to :publisher
	has_many :versions
	validates_presence_of :name
	after_update :save_versions
	validates_associated :versions

	def version_attributes=(version_attributes)
	  version_attributes.each do |attributes|	
			if attributes[:id].blank?
			  versions.build(attributes)
			else
				version = versions.detect { |t| t.id == attributes[:id].to_i }
				version.attributes = attributes
			end
		end
	end

	def save_versions
		versions.each do |v|
			if v.should_destroy?
				v.destroy
			else
				v.save(false)
			end
		end
	end
end
