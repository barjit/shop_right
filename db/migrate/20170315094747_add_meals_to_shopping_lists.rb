class AddMealsToShoppingLists < ActiveRecord::Migration[5.0]
  def change
    add_reference :shopping_lists, :meal, foreign_key: true
  end
end
