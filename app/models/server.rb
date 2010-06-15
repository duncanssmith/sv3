class Server < ActiveRecord::Base
	has_and_belongs_to_many :registers
	belongs_to :clients

	RAGSTATUS = %w[ RED AMBER GREEN ]

end
