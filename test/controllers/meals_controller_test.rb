require 'test_helper'

class MealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    user = User.create!(email: "admin@test.com", password: "password", password_confirmation: "password", first_name: "Jeff", last_name: "somet", preference: 3, admin_role: true)
    post user_session_url(email: user.email, password: user.password)
    @meal = meals(:one)
    byebug
  end

  test "should get index" do
    get meals_url
    assert_response :success
  end

  test "should get new" do
    get new_meal_url
    assert_response :success
  end



  # test "should create meal" do
  #   assert_difference('Meal.count') do
  #     post meals_url, params: { meal: { description: @meal.description, method: @meal.method, name: @meal.name } }
  #   end

  #   assert_redirected_to meal_url(Meal.last)
  # end

  # test "should show meal" do
  #   get meal_url(@meal)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_meal_url(@meal)
  #   assert_response :success
  # end

  # test "should update meal" do
  #   patch meal_url(@meal), params: { meal: { description: @meal.description, method: @meal.method, name: @meal.name } }
  #   assert_redirected_to meal_url(@meal)
  # end

  # test "should destroy meal" do
  #   assert_difference('Meal.count', -1) do
  #     delete meal_url(@meal)
  #   end

  #   assert_redirected_to meals_url
  # end
end
