class Ability
	include CanCan::Ability

	def initialize(user)
	#	current_user ||= User.new # guest user
	#	user ||= User.new # guest user
		  can :manage, :all if user.role == "admin"
		  can :read, User if user.role == "admin"
			can :manage, Licence if user.role == "clientmaintainer"
			can :manage, Server if user.role == "clientmaintainer"
			can :read, Asset if user.role == "clientmaintainer"
			can :read, Licence if user.role == "client"
			can :read, Server if user.role == "client"
	end
end
