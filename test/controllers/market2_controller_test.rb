require "test_helper"

class Market2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get market2_index_url
    assert_response :success
  end
end
