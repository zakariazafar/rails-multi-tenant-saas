class RegistrationsController < Devise::RegistrationsController
	protected

	  def after_sign_up_path_for(resource)
	    #'/an/example/path' # Or :prefix_to_your_route
	    new_user_session_url(subdomain: resource.subdomain)
	  end

	  # def after_inactive_sign_up_path_for(resource)
	  #     '/an/example/path' # Or :prefix_to_your_route
	  #   end
end