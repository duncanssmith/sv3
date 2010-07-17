# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
	layout "main"

	#before_filter :authorize, :except => :login
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
	filter_parameter_logging "password"

	helper_method :current_user
  helper_method :current_client

	rescue_from CanCan::AccessDenied do |exception|
		flash[:error] = "Access denied."
		redirect_to home_url
	end



  protected

	  #def authorize
		#  #@current_user ||= User.find_by_id(session[:user_id])
		#  #unless User.find_by_id(session[:user_id])
		#	@current_user ||= User.find_by_id(session[:user_id])
		#	unless @current_user
		#		session[:original_uri] = request.request_uri
		#		flash[:notice] = "Please log in"
		#		redirect_to :controller => 'admin', :action => 'login'
		#	end
#
#		end

	private

	def current_user_session
		return @current_user_session if defined?(@current_user_session)
		@current_user_session = UserSession.find
	end

	def current_user
		return @current_user if defined?(@current_user)
		@current_user = current_user_session && current_user_session.record
	end

	def current_client
		return @current_client if defined?(@current_client)
    @current_user = current_user_session && current_user_session.record

		if( ( session[:selected_client] ) && ( session[:selected_client] != 0) )
		  @current_client = session[:selected_client]
		else
			if @current_user
			  @current_client = Client.find @current_user.client_id
			else
				@current_client = nil
			end
		end

	end
end
