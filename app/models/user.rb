class User < ActiveRecord::Base
  attr_accessible :name, :user, :email, :password, :password_confirmation, :client_id
	acts_as_authentic
end
