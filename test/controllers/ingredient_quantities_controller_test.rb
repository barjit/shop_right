require 'test_helper'

class IngredientQuantitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient_quantity = ingredient_quantities(:one)
  end

  test "should get index" do
    get ingredient_quantities_url
    assert_response :success
  end

  test "should get new" do
    get new_ingredient_quantity_url
    assert_response :success
  end

  test "should create ingredient_quantity" do
    assert_difference('IngredientQuantity.count') do
      post ingredient_quantities_url, params: { ingredient_quantity: { ingredient_id: @ingredient_quantity.ingredient_id, meal_id: @ingredient_quantity.meal_id, quantity: @ingredient_quantity.quantity } }
    end

    assert_redirected_to ingredient_quantity_url(IngredientQuantity.last)
  end

  test "should show ingredient_quantity" do
    get ingredient_quantity_url(@ingredient_quantity)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingredient_quantity_url(@ingredient_quantity)
    assert_response :success
  end

  test "should update ingredient_quantity" do
    patch ingredient_quantity_url(@ingredient_quantity), params: { ingredient_quantity: { ingredient_id: @ingredient_quantity.ingredient_id, meal_id: @ingredient_quantity.meal_id, quantity: @ingredient_quantity.quantity } }
    assert_redirected_to ingredient_quantity_url(@ingredient_quantity)
  end

  test "should destroy ingredient_quantity" do
    assert_difference('IngredientQuantity.count', -1) do
      delete ingredient_quantity_url(@ingredient_quantity)
    end

    assert_redirected_to ingredient_quantities_url
  end
end
