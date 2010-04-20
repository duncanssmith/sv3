class Ability
	include CanCan::Ability

	def initialize(user)
		user ||= User.new # guest user

		if user.role? :admin
		  can :read, :all
		end
		if user.role? :client
			can :create, Licence 
			can :update, Licence do |licence|
				licence.try(:user) == current_user
			end
		end
	end
end
