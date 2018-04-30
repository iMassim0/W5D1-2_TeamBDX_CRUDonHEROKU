class AddGossipToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :gossip, foreign_key: true
  end
end
