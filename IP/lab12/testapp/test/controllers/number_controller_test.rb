require 'test_helper'

class NumberControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get number_view_url
    assert_response :success
  end

end
