class PagesController < ApplicationController
  
  # grab the short string if it exists 
  def home(params = {})
    @bouncer = params[:chars]
  end

  def about
    
  end
  
  def my_urls
    @bouncers = Bouncer.find(:all, :conditions => { :user_id => current_user.id }, :order => "count DESC")
    
  end

end
