class CreateDirectors < ActiveRecord::Migration[5.2]
  # Ajout de la classe director avec ses attributs first_name et last_name
  def change
    create_table :directors do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
