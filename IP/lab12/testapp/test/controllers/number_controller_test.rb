require 'test_helper'

class NumberControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get number_view_url, params: {arr: '6'} 
    assert_response :success
  end

  test 'should get random text' do
    get number_view_url, params: { arr: 'ssdfsd' }
    assert_equal assigns[:result], 'don\'t numbers'
  end

  test 'should get numbers' do
    get number_view_url, params: { arr: '6 28 2 6' }
    assert_equal assigns[:result], [[6, 28], [6]]
  end
end
