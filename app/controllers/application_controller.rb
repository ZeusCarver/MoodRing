class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def  one
    @url = "http://www.cnn.com"
    @name = @url
    render 'show'
  end
  def  two
    @url = "http://www.msnbc.com"
    @name = @url
    render 'show'
  end
  def three
    @url = "http://www.aljazeera.com"
    @name = @url
    render 'show'
  end
  def  four
    @url = "http://rt.com/"
    @name = @url
    render 'show'
  end
  def  five
    @url = "http://www.thelocal.es/"
    @name = @url
    render 'show'
  end
  def  six
    @url = "http://www.xinhuanet.com/english/"
    @name = @url
    render 'show'
  end
  def show
    
    if params['id'] == 'one'
     @url = "http://www.cnn.com"
       @name = @url
      elsif params['id'] == 'two'
      @url = "http://www.msnbc.com"
       @name = @url
      elsif params['id'] == 'three'
      @url = "http://www.aljazeera.com"
       @name = @url
      elsif params['id'] == 'four'
       @name = @url
      @url = "http://rt.com/"
    elsif params['id'] == 'five'
      @url = "http://www.thelocal.es/"
       @name = @url
      elsif params['id'] == 'six'
      @url = "http://www.xinhuanet.com/english/"
       @name = @url
    else
      @name = 'No news found'
    end
   
    render 'show'
  end
end