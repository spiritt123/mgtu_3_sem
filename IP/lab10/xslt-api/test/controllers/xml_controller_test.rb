require 'test_helper'

class XmlControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should get nil' do
    get "http://127.0.0.1:3000?format=xml", params: { arr: '' }
    assert_equal assigns[:result], 'input nil'
  end

  test 'should get random text' do
    get "http://127.0.0.1:3000?format=xml", params: { arr: 'ssdfsd' }
    assert_equal assigns[:result], 'don\'t numbers'
  end

  test 'should get numbers' do
    get "http://127.0.0.1:3000?format=xml", params: { arr: '6 28 2 6' }
    assert_equal assigns[:result], [[6, 28], [6]]
  end
end
