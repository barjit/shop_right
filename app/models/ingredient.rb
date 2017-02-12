class Ingredient < ApplicationRecord
  belongs_to :meal

  enum unit: [:grams, :cups, :millilitres, :cans]
end
