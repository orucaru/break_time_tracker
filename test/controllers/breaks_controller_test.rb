require "test_helper"

class BreaksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get breaks_index_url
    assert_response :success
  end

  test "should get create" do
    get breaks_create_url
    assert_response :success
  end

  test "should get update" do
    get breaks_update_url
    assert_response :success
  end
end
