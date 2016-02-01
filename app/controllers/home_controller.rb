class HomeController < ApplicationController
	def index
    if user_signed_in?
    @template_part = "dashboard"
    render 'dashboard'
    else
		@active = "index"
    render 'index'
    end
	end

  def aboutus
    @active = "aboutus"
  end
  def services
    @active = "services"
  end
  def portfolio
    @active = "portfolio"
  end
  def contact
    @active = "contact"
  end
end
