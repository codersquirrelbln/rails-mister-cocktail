class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, :cocktail_id, :ingredient_id, presence: true
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]
  # A dose must have a description, a cocktail and an ingredient, and [cocktail,
  # ingredient] pairings should be unique.
end
