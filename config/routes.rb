Rails.application.routes.draw do
  #CREATE
  get '/mood' => 'moods#mood'
  get '/profile/create' => 'moods#create'
  #READ
  get '/' => 'moods#home'
  get '/search' => 'moods#search'
  get '/profile' => 'moods#index'
  get '/profile/:id/show' => 'moods#profile'
  #UPDATE
  get '/updatemood/:id' => 'moods#updatemood'
  get '/profile/:id/edit' => 'moods#edit'
  #DESTROY
  get '/destroy' => 'moods#destroy'
end
