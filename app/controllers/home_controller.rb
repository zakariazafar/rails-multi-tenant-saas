class HomeController < ApplicationController
	def index
		@active = "index"
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
