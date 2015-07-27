class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
  def show
    @scientist = Scientist.find_by_id(params[:id])
  end
  def new 
    render 'new' 
  end
  def create
    g= Gif.new 
    g.caption= params['caption']
    g.url= params['url']
    g.save
    redirect_to"/show"
   
  end
  
  def out 
    render 'show'
    end
  
end
