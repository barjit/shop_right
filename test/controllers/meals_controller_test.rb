require 'test_helper'

class MealsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
    setup do
      @user = sign_in users(:admin)
      @meal = meals(:one)
    end
    
      test "should get index" do
        sign_in @user, scope: :admin

        get meals_url
        assert_response :success
      end

      test "should get new" do
        sign_in @user, scope: :admin

        get new_meal_url
        assert_response :success
      end

      test "should create meal" do
        sign_in @user, scope: :admin

        assert_difference('Meal.count') do
          post meals_url, params: { meal: { description: @meal.description, method: @meal.method, name: @meal.name } }
        end

        assert_redirected_to meal_url(Meal.last)
      end

      test "should show meal" do
        sign_in @user, scope: :admin

        get meal_url(@meal)
        assert_response :success
      end

      test "should get edit" do
        sign_in @user, scope: :admin

        get edit_meal_url(@meal)
        assert_response :success
      end

      test "should update meal" do
        sign_in @user, scope: :admin

        patch meal_url(@meal), params: { meal: { description: @meal.description, method: @meal.method, name: @meal.name } }
        assert_redirected_to meal_url(@meal)
      end

      test "should destroy meal" do
        sign_in @user, scope: :admin

        assert_difference('Meal.count', -1) do
          delete meal_url(@meal)
        end

        assert_redirected_to meals_url
      end
end
