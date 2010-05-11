class Client < ActiveRecord::Base
	has_many :servers
	has_many :licences
	has_many :devices
end
