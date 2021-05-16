require "test_helper"

class EnquirysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get enquirys_index_url
    assert_response :success
  end
end
