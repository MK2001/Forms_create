class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  def show 
    @p = Profile.find_by_id(params['id'])
    render 'new'
  end
  
  def new
  end
  
  def create
    p = Profile.new
    p.name = params['name']
    p.picture = params['picture']
    p.text = params['text']
    p.save
    redirect_to "/people/#{p.id}"
  end
  
    
end
