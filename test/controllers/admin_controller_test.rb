require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get create_user" do
    get admin_create_user_url
    assert_response :success
  end

  test "should get create_file" do
    get admin_create_file_url
    assert_response :success
  end

end
