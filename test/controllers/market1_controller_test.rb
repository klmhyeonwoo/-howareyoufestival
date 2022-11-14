require "test_helper"

class Market1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get market1_index_url
    assert_response :success
  end
end
