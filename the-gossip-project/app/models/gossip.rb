class Gossip < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :anonymous_author, presence: true
  validates :content, presence: true
end
