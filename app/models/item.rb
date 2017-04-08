class Item < ApplicationRecord
  belongs_to :shopping_list

  enum unit: [:grams, :cups, :millilitres, :cans]
end
