require 'test_helper'

class ShoppingListControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get shopping_list_create_url
    assert_response :success
  end

end
