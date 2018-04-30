class AddDirectorToMovies < ActiveRecord::Migration[5.2]
  # Ajout de la relation un "director" peut avoir plusieurs "movies"
  def change
    add_reference :movies, :director, foreign_key: true
  end
end
