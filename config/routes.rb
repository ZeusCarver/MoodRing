Rails.application.routes.draw do
  
  get '/' => 'application#home'
  get '/:id' => 'application#show'
  get '/one' =>'application#one'
  get '/two' =>'application#two'
  get '/three' =>'application#three'
  get '/four' =>'application#four'
  get '/five' =>'application#five'
  get '/six' =>'application#six'
end
