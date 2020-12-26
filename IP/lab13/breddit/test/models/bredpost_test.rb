require 'test_helper'

class BredpostTest < ActiveSupport::TestCase
    
  test 'should save data into db' do
    instance = Bredpost.new(id: Time.now, title: "sad", content: 1, name: "name")
    assert instance.save
  end

  test 'should unique data' do
    l = Bredpost.new()
    l.id = Time.now
    l.title = 123
    l.content = "asd"
    l.name = "asd"
    l.save
    r = Bredpost.find_by(title: 123)
    assert_equal "asd", r.content
  end

  test 'should 2 data' do
    l = Bredpost.new()
    l.id = 123
    l.title = 123
    l.name = "sss"
    l.content = "asd"
    l.save

    r = Bredpost.new()
    r.id = 123
    r.title = 123
    r.name = "sss"
    r.content = "asd"
    r.save

    assert_equal 1, Bredpost.where(title: 123).count
  end
end
