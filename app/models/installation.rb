class Installation < ActiveRecord::Base
	belongs_to :devices
	belongs_to :version
	has_and_belongs_to_many :licences
end
