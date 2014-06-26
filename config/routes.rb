Rails.application.routes.draw do
  
  get '/' => 'application#home'
  get '/mood' => 'application#mood'
  get '/profile/:id' => 'application#show'
  

end
