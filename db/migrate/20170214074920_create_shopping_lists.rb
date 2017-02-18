class CreateShoppingLists < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
