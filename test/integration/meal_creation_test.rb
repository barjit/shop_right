require 'test_helper'

class MealCreationTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
    # setup do
    #   sign_in @user, scope: :admin
      
      test "should get index" do
        get meals_url
        assert_response :success
      end

    # end

end
