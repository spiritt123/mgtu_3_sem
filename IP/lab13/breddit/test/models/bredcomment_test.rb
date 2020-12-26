require 'test_helper'

class BredcommentTest < ActiveSupport::TestCase
  test 'should save data into db' do
    instance = Bredcomment.new(id_p: 123, id_c: Time.now, content: 1, name: "name")
    assert instance.save
  end

  test 'should get data from db' do
    assert Bredcomment.create_comment(123, "asd", "aoo").valid?
  end

  test 'should get 1 data from db' do
    assert_not Bredcomment.create_comment("asd", "", "").valid?
  end
  test 'should unique data' do
    l = Bredcomment.new()
    l.id_p = 123
    l.id_c = 123
    l.content = "asd"
    l.name = "asd"
    l.save
    r = Bredcomment.find_by(id_p: 123)
    assert_equal "asd", r.content
  end

  test 'should 2 data' do
    l = Bredcomment.new()
    l.id_p = 6
    l.id_c = 123
    l.name = "sss"
    l.content = "asd"
    l.save

    r = Bredcomment.new()
    r.id_p = 6
    r.id_c = 123
    r.name = "sss"
    r.content = "asd"
    r.save

    assert_equal 2, Bredcomment.where(id_p: 6).count
  end
end

