class Movie < ApplicationRecord
  # Pour valider la migration N°20180430093115_add_director_to_movies
  # Ajout de la relation : un "movie" n'a qu'un seul "director"
  belongs_to :director, optional: true
end
