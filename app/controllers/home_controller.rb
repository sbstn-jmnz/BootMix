class HomeController < ApplicationController
  layout 'landing'
  def index
  	if user_signed_in?
  		redirect_to users_path
  	end  
  end

end
