class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :client_id
	acts_as_authentic
end
