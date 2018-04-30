class CreateMovies < ActiveRecord::Migration[5.2]
  # Ajout de la classe movies avec ses attributs title, realease_year et director
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
      t.string :director

      t.timestamps
    end
  end
end
