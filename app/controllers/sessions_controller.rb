class SessionsController < Devise::SessionsController
	
   
  
  def new
     @template_part = "register_session"
     if params[:redirect_to].present?
       store_location_for(resource, params[:redirect_to])    
     end
     
		 if request.subdomain.blank? || request.subdomain == "www"
			
		 	flash[:notice] = "Access Restricted"
		 	redirect_to :root
		 else

			super
		 end
	end
end