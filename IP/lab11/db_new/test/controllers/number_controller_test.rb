require 'test_helper'

class NumberControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get number_input_url
    assert_response :success
  end

  test "should get output" do
    get number_output_url
    assert_response :success
  end

end

