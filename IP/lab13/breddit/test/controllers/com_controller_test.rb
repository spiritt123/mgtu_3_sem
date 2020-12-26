require 'test_helper'

class ComControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get com_index_path
    assert_response :success
  end

  test "should post index" do
    post com_index_path
    assert_response :success
  end
end
