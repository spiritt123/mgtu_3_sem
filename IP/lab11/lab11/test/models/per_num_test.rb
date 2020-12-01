require 'test_helper'

class PerNumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should save data into db' do
    instance = PerNum.new(arr: 10)
    assert_not instance.save
  end

  test 'should get data from db' do
    assert PerNum.create_with_output('asd').valid?
  end

  test 'should get 1 data from db' do
    assert PerNum.create_with_output('6 1 2').valid?
  end
  sql = "Select * from per_nums;"
  p ActiveRecord::Base.connection.execute(sql)
  p PerNum.select(arr: "6")
end
