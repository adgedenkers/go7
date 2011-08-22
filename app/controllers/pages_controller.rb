class PagesController < ApplicationController
  
  # grab the short string if it exists 
  def home(params = {})
    @bouncer = params[:chars]
    
    @top_url = Bouncer.first(:order => "count DESC")
    @top_snippet = Snippet.first(:order => "count DESC")
  end

  def about
    
  end
  
  def tags
    
  end

end
