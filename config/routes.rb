Rails.application.routes.draw do
  
  get '/' => 'application#home'
  get '/mood' => 'application#mood'
  get '/updatemood/:id' => 'application#updatemood'
  get '/profile/create' => 'application#create'
  get '/profile/:id/edit' => 'application#edit'
  get '/profile/:id/show' => 'application#profile'
  get '/profile' => 'application#index'
  get '/destroy' => 'application#destroy'
  get '/search' => 'application#search'

end
