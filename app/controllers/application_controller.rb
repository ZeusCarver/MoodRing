class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def mood
    m = Mood.new
    m.name = params['name']
    m.mood = params['mood']
    m.save
    @name = m.name
  end
  
  def updatemood
    @mood = Mood.find_by_id(params['id'])
  end
  
  def update
    m = Mood.find_by_id(params['id'])
    m.name = params['name']
    m.mood = params['mood']
    m.save
    @name = m.name
    redirect_to "/mood"
  end
  
  def edit
    @mood = Mood.find_by_id(params['id'])
  end
  
  def show
    @mood = Mood.find_by_id(params[':id'])
    render 'profile'
  end
  
  def profile
    @mood = Mood.find_by_id(params[':id'])
  end
  
  def create
     @mood = Mood.find_by_id(params['id'])
  end 
  def index
    @moods = Mood.all
  end
end
