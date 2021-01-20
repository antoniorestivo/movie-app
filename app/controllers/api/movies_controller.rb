
class Api::MoviesController < ApplicationController
  
  def index #get all movies
    @movie = Movie.all
    render index.json.jb
  end
    
  end
end






