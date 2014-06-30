Rails.application.routes.draw do
  
  get '/' => 'application#home'
  get '/mood' => 'application#mood'
  get '/updatemood' => 'application#updatemood'
  get '/updatemood/:id' => 'application#update'
  get '/profile/create' => 'application#create'
  get '/profile/:id/edit' => 'application#edit'
  get '/profile/:id/show' => 'application#profile'
  get '/profile' => 'application#index'
  

end
