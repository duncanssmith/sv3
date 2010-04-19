class User < ActiveRecord::Base
	acts_as_authentic { |c| c.login_field = :name } 
  attr_accessible :name, :email, :password, :confirm_password, :role

	ROLES = %w[admin client superuser ]

	def role?(role)
		role.to_s
	end

end
