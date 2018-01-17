class Deck < ApplicationRecord
  belongs_to :hashtag
  has_many :card
end
