class Gossip < ApplicationRecord
  has_many :comments
  validates :anonymous_author, presence: true
  validates :content, presence: true
end
