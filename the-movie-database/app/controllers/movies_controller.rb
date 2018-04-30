class MoviesController < ApplicationController
  def index
    # Ajout des deux variables movies et films pour exporter jusque la page index
    @movies = Movie.all
    @directors = Director.all
  end
end
