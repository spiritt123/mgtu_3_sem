# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'main'

# This shiny device polishes bared foos
class TestPart1 < Minitest::Test
  def test_first_arg
    assert_in_delta Math.log10((12 * 12) / (12 - 2)) * Math.exp(12), my_fun(12)
  end

  def test_infinite_1
    assert my_fun(2).infinite?, true
  end

  def test_infinite_2
    assert (-my_fun(0)).infinite?, true
  end
  
  def test_nan_1
    assert my_fun(1).nan?, true
  end

  def test_nan_2
    assert my_fun(-3).nan?, true
  end
end
