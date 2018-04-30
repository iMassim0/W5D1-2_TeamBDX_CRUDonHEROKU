class Director < ApplicationRecord
  # Pour valider la migration N°20180430093115_add_director_to_movies
  # Ajout de la relation :  un "director" peut avoir plusieurs "movies"
  has_many :movies
end
