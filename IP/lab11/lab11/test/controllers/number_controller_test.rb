require 'test_helper'
require 'json'

class NumberControllerTest < ActionDispatch::IntegrationTest
  test "should get output" do
    get 'http://127.0.0.1:3000/number/output?arr=6'
    assert_response :success
  end

  test 'should get random text' do
    get 'http://127.0.0.1:3000/number/output?arr=ssfsd'
    assert_equal assigns[:result].output, 'don\'t numbers'
  end

  test 'should get numbers' do
    get number_output_url, params: { arr: '6 28 2 6' }
    assert_equal assigns[:result].output, "[[6, 28], [6]]"
  end
end
