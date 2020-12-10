require 'test_helper'

class HistoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test 'should save data into db' do
    instance = History.new(arr: 10)
    assert_not instance.save
  end

  test 'should get data from db' do
    assert History.create_with_output('asd').valid?
  end

  test 'should get 1 data from db' do
    assert History.create_with_output('6 1 2').valid?
  end

  test 'should unique data' do  
    l = History.new()
    l.arr = '6 1 2'
    l.output = '[[6]]'
    l.save!
    r = History.find_by(arr: '6 1 2')
    assert_equal "[[6]]", r.output
  end
  
  test 'should 2 data' do
    l = History.new()
    l.arr = "6 1 2"
    l.output = "[[6]]"
    l.save!

    r = History.new()
    r.arr = "6 1 2"
    r.output = "[[6]]"
    r.save

    assert_equal 1, History.where(arr: '6 1 2').count
  end
end
