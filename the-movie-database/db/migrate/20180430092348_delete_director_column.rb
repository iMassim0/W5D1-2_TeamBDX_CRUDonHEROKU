class DeleteDirectorColumn < ActiveRecord::Migration[5.2]
  # Suppression de la colonne director du modèle movies
  def change
    change_table(:movies) do |t|
      t.remove :director
    end
  end

end
