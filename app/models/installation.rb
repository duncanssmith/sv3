class Installation < ActiveRecord::Base
	belongs_to :devices
	belongs_to :version
	belongs_to :licence
end
