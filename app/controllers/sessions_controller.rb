class SessionsController < Devise::SessionsController
	
   
  
  def new
    @template_part = "register_session"
		 if request.subdomain.blank? || request.subdomain == "www"
			
		 	flash[:notice] = "Access Restricted"
		 	redirect_to :root
		 else
			super
		 end
	end
end