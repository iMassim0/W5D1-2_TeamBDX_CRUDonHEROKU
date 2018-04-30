class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :anonymous_author, presence:true
      t.string :content, presence:true

      t.timestamps
    end
  end
end
