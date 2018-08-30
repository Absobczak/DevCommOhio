require 'test_helper'

class RelationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get relations_create_url
    assert_response :success
  end

  test "should get show" do
    get relations_show_url
    assert_response :success
  end

  test "should get destroy" do
    get relations_destroy_url
    assert_response :success
  end

end
