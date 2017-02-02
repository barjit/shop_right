class AddDietTypeToMeal < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :diet, :integer
  end
end
