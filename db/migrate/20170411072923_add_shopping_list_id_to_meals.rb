class AddShoppingListIdToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :shopping_list_id, :integer
  end
end
