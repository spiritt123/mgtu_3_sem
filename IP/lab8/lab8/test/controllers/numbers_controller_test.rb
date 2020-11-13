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

  test "should get nil" do
    get numbers_view_url, params: {arr: ''}
    assert_equal assigns[:result], "input nil"
  end

  test "should get random text" do
    get numbers_view_url, params: {arr: 'ssdfsd'}
    assert_equal assigns[:result], "don\'t numbers"
  end

  test "should get numbers" do
    get numbers_view_url, params: {arr: "6 2"}
    assert_equal assigns[:result], [[6]]
  end
end
