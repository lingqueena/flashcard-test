class DeckStudent < ApplicationRecord
  belongs_to :student
  belongs_to :deck
end

