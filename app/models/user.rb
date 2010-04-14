class User < ActiveRecord::Base
	acts_as_authentic { |c| c.login_field = :name } 
  attr_accessible :name, :email, :role, :password, :password_confirmation, :client_id
end
