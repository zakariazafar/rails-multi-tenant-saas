class RegistrationsController < Devise::RegistrationsController
	   
     
     
      def new
        @template_part = "register_session"
      	if request.subdomain.blank? || request.subdomain == "www"
      		super
      	else
      		flash[:notice] = "Access Restricted"
      		redirect_to :root
      	end
      end

      def create
        @template_part = "register_session"
        super

      end
	  protected

	  def after_sign_up_path_for(resource)

	    #'/an/example/path' # Or :prefix_to_your_route
	    new_user_session_url(subdomain: resource.subdomain)
	  end

	  # def after_inactive_sign_up_path_for(resource)
	  #     '/an/example/path' # Or :prefix_to_your_route
	  #   end
end