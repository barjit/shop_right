class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :shopping_list, foreign_key: true
      t.string :name
      t.float :quantity
      t.integer :unit

      t.timestamps
    end
  end
end
