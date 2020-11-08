# frozen_string_literal: false

require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'main'

# tests
class TestPart1 < Minitest::Test
  def test_e_3
    assert_equal 1, integr(10e-3)
  end

  def test_e_4
    assert_equal 2, integr(10e-4)
  end
end
