class AddItemsToShoppingLists < ActiveRecord::Migration[5.0]
  def change
    add_reference :shopping_lists, :item, foreign_key: true
  end
end
