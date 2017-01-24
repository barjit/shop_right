class AddMealImageToMeals < ActiveRecord::Migration[5.0]
  def up
    add_attachment :meals, :meal_image
  end

  def down
    remove_attachment :meals, :meal_image
  end
end
