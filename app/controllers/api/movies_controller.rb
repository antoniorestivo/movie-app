
class Api::MoviesController < ApplicationController
  
  def index #get all movies
    @movie = Movie.all
    render json: @movie
  end
  def create # post to create a movie
    @movie = Movie.new({
      title: params['title'],
      year: params['year'],
      plot: params['plot'],
      director: params['director'],
      english: params['english']
    })
    @movie.save
    render json: @movie
  end
  
    
  end







