class Comment < ApplicationRecord
  belongs_to :gossip
  validates :anonymous_commentor, presence: true
  validates :body, presence: true
end
