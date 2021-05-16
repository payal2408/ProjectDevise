require "test_helper"

class EnquiysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get enquiys_index_url
    assert_response :success
  end
end
