class Item < ApplicationRecord
  has_one :shopping_list

  enum unit: [:grams, :cups, :millilitres, :cans]
end
