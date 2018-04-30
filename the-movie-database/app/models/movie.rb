class Movie < ApplicationRecord
  belongs_to :director, optional: true
end
