require 'test_helper'

class NumbersControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get numbers_input_url
    assert_response :success
  end

  test "should get view" do
    get numbers_view_url
    assert_response :success
  end

end
