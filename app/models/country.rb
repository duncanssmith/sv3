class Country < ActiveRecord::Base
	
	def get_countries
		@countries ||= Country.find(:all, :select => 'iso_code, country')
	end

end
