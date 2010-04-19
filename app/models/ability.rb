class Ability
	include CanCan::Ability

	def initialize(current_user)
		current_user ||= User.new # guest user

		if current_user.role? :admin
		  can :manage, :all
		end
		if current_user.role? :client
			can :create, Licence 
			can :update, Licence do |licence|
				licence.try(:user) == current_user
			end
		end
	end
end
