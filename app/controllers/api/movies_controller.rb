require "http"
class Api::MoviesController < ApplicationController
  def see_all_movies
    
    @all_movies = Movie.all
    @descending_movies = Movie.order(title :desc)
    render "movie.json.jb"

    all_movies_results = HTTP.get("http://localhost:3000/api/all_movie_list")
  puts all_movies_results
  
  end

  def choose_a_movie_query_parameter

     user_choice = params["single_movie"]
     @user_movie = Movie.find_by(title: user_choice)
     select_movies_results = HTTP.get("http://localhost:3000/api/select_movie_list")
     puts select_movies_results
     render "select_movie.json.jb"
   end
   def choose_a_movie_segment_parameter
      user_input = params[:wildcard]
      @user_segment_movie = Movie.find_by(title: user_input)
      render "select_query_movie.json.jb"
    
   end
end






