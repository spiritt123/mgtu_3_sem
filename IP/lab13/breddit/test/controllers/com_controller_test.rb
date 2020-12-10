require 'test_helper'

class ComControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get com_index_url
    assert_response :success
  end

end
