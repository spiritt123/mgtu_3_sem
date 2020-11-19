require 'test_helper'

class NumberControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get number_input_url
    assert_response :success
  end

  test "should get view" do
    get number_view_url
    assert_response :success
  end

end
