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
    g= Scientist.new 
    g.name= params['name']
    g.birth= params['birth']
    g.location= params['location']
    g.field= params['field']
    g.content= params['content']
    g.content= params['img_url']
    g.save
    redirect_to"/scientists/#{g.id}"
   
  end
 
  def edit
    @scientist = Scientist.find_by_id(params['id'])
end
  
  def update
  g = Scientist.find_by_id(params['id'])
    g.name= params['name']
    g.birth= params['birth']
    g.location= params['location']
    g.field= params['field']
    g.content= params['content']
    g.content= params['img_url']
    g.save
    redirect_to"/scientists/#{g.id}"
    
    
    g.name= params['name']
    g.birth= params['birth']
    g.location= params['location']
    g.field= params['field']
    g.content= params['content']
    g.content= params['img_url']
    g.save
    redirect_to"/scientists/#{g.id}"
    
end
  
  def out 
    render 'show'
    end
  
end

