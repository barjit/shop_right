json.extract! ingredient_quantity, :id, :meal_id, :ingredient_id, :quantity, :created_at, :updated_at
json.url ingredient_quantity_url(ingredient_quantity, format: :json)