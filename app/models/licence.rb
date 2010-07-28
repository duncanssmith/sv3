class Licence < ActiveRecord::Base
	#has_and_belongs_to_many :versions
	#has_and_belongs_to_many :installations
	has_many :versions, :through => :installations
	has_many :installations

	def get_countries
		@countries ||= Country.find(:all, :select => 'iso_code, country')
	end

end
