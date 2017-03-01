require 'test_helper'

class ShoppingListsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get shopping_lists_create_url
    assert_response :success
  end

end
