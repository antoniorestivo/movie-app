Rails.application.routes.draw do
  
  namespace :api do
    get '/actor_list' => 'actors#sample_action'
    get '/movies' => 'movies#index'
    post '/movies' => 'movies#create'
  end

    

    
    
  end 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

