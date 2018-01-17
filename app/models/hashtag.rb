class Hashtag < ApplicationRecord
  belongs_to :subject
  has_many :decks
end
