class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  def show 
    @p = Profile.find_by_id(params['id'])
    render 'show'
  end
  
  def new
  end
  
  def create
    p = Profile.new
    p.name = params['name']
    p.picture = params['picture']
    p.text = params['text']
    p.save
    redirect_to "/profiles/#{p.id}"
  end
  
  def edit
    @p = Profile.find_by_id(params['id'])
  end
  
  def update
    p = Profile.find_by_id(params['id']) 
    p.name = params['name']
    p.picture = params['picture']
    p.text = params['text']
    p.save
    redirect_to "/profiles/#{p.id}"
  end
  
  def destroy
    p = Profile.find_by_id(params['id']) 
    p.destroy
    redirect_to '/profiles'
  end
  
  def index
    @profiles = Profile.all
  end
end
