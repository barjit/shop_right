class CreateIngredientQuantities < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredient_quantities do |t|
      t.references :meal, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.float :quantity

      t.timestamps
    end
  end
end
