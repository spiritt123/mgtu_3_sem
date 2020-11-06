# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'main'

# tests file
class TestPart1 < Minitest::Test
  def test_line_true
    assert_equal true, Line.new(1, 1, 2, 2).target3?(0, 0)
  end

  def test_line_false
    assert_equal false, Line.new(1, 1, 2, 2).target3?(3, 0)
  end

  def test_thich_line_false
    assert_equal false, ThichLine.new(1, 1, 2, 2, 1).target3?(5, 2)
  end

  def test_thich_line_true
    assert_equal true, ThichLine.new(1, 1, 2, 2, 1).target3?(1, 2)
  end

  def test_line_instance
    line = Line.new(1, 1, 2, 2)
    assert_equal (line.instance_of? Line), true
  end
  
  def test_line_instance
    line = ThichLine.new(1, 1, 2, 2, 1)
    assert_equal (line.instance_of? ThichLine), true
  end
end
