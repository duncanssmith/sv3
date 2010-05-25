class Client < ActiveRecord::Base
	has_many :servers
	has_many :licences
	has_many :devices

	def self.search(search)
		if search
			find(:all, :conditions => ['id = ', '#{params[:search]}'])
		else
			find(:all)
		end
	end

end
