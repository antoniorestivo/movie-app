Rails.application.routes.draw do
  
  namespace :api do
    get "/actor_list" => "actors#sample_action"
  end

  namespace :api do
    get "/all_movie_list" => "movies#see_all_movies"
  end

  namespace :api do
    get "/select_movie_list" => "movies#choose_a_movie"
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
