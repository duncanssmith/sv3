class Installation < ActiveRecord::Base
	belongs_to :device
	belongs_to :version
end
