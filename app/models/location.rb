class Location < ActiveRecord::Base
	has_many :devices
	has_one :client
end
