class Register < ActiveRecord::Base
	has_and_belongs_to_many :devices
	has_and_belongs_to_many :servers
end
