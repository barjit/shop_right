class IngredientsController < ApplicationController
  def create
    @meal = Meal.find(params[:meal_id])
    @ingredient = @meal.ingredients.create(ingredients_params) 
    redirect_to meal_path(@meal)
  end

  def destroy
    @meal = Meal.find(params[:meal_id])
    @ingredient = @meal.ingredients.find(params[:id])
    @ingredient.destroy
    redirect_to edit_meal_path(@meal)
  end

  private

    def ingredients_params
      params.require(:ingredient).permit(:name, :unit, :quantity)
    end
end
