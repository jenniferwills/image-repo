require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get public" do
    get pages_public_url
    assert_response :success
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get private" do
    get pages_private_url
    assert_response :success
  end

end
