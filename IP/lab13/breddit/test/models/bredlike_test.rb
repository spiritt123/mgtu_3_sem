require 'test_helper'

class BredlikeTest < ActiveSupport::TestCase

  test 'should save data into db' do
    instance = Bredlike.new(id_l: Time.now, name: "name")
    assert instance.save
  end

  test 'should get data from db' do
    assert Bredlike.create_post(123, "aoo").valid?
  end

  test 'should get 1 data from db' do
    assert Bredlike.create_post("asd", "sd").valid?
  end
  test 'should unique data' do
    l = Bredlike.new()
    l.id_l = 123
    l.name = "asd"
    l.save
    r = Bredlike.find_by(id_l: 123)
    assert_equal "asd", r.name
  end

  test 'should 2 data' do
    l = Bredlike.new()
    l.id_l = 6
    l.name = "sss"
    l.save!

    r = Bredlike.new()
    r.id_l = 6
    r.name = "sss"
    r.save

    assert_equal 2, Bredlike.where(id_l: 6).count
  end
end
