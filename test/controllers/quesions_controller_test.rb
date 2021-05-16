require "test_helper"

class QuesionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quesions_index_url
    assert_response :success
  end
end
