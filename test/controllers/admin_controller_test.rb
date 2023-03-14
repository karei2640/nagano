require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get homes" do
    get admin_homes_url
    assert_response :success
  end
end
