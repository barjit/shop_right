class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.references :meal, foreign_key: true
      t.string :name
      t.float :quantity
      t.integer :unit

      t.timestamps
    end
  end
end
