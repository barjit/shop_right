require 'test_helper'

class ShoppingListsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::ControllerHelpers

    setup do
      sign_in @user, scope: :admin

      test "should get create" do
        get shopping_lists_url
        assert_response :success
      end
  
    end

end
