class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper ApplicationHelper

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :set_mailer_host

  def after_sign_in_path_for(resource)
      sign_in_url = new_user_session_url
      
      if request.referer == sign_in_url
        super
      else
        stored_location_for(resource) || request.referer || root_path
      end
  end


  protected

	def set_mailer_host
	  	# Will this work with new user registration
	  	ActionMailer::Base.default_url_options[:host] = request.host_with_port
	end

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :subdomain
      devise_parameter_sanitizer.for(:invite) << :subdomain
    end
  
end
