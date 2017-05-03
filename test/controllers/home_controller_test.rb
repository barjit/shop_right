require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get sign up (new) page" do
    get new_user_registration_url
    assert_response :success
  end

  test "should be redirected to sign up page" do
    get meals_url
    assert_response :redirect
  end

end
