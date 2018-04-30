class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @directors = Director.all
  end
end
