class ShoppingList < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :meals
  accepts_nested_attributes_for :meals
  accepts_nested_attributes_for :items
end
