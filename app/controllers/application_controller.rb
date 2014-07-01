class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def home
    @moods = Mood.all
  end
  
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
  
  def profile
    @mood = Mood.find_by_id(params['id'])
    if @mood == nil
      redirect_to '/'
    else
    render 'profile'
    end
  end
  
  def create
     @mood = Mood.find_by_id(params['id'])
  end
  
  def index
    @moods = Mood.all
  end
  
  def destroy
    m = Mood.find_by_id(params['id'])
    m.destroy
    redirect_to "/"
  end
  
  def search
    id = params['id']
    redirect_to "/profile/#{id}/show"
  end
  
end
