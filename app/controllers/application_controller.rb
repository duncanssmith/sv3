# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
	layout "main"
	before_filter :authorize, :except => :login
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
	filter_parameter_logging "password"


		protected

			def authorize
				#@current_user ||= User.find_by_id(session[:user_id])
				#unless User.find_by_id(session[:user_id])
				@current_user ||= User.find_by_id(session[:user_id])
				unless @current_user
					session[:original_uri] = request.request_uri
					flash[:notice] = "Please log in"
					redirect_to :controller => 'admin', :action => 'login'
				end

			end

end
