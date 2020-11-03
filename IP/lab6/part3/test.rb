# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'main'

# This shiny device polishes bared foos
class TestPart1 < Minitest::Test
  def test_first_a
    assert_in_delta 1, neibr_block(0, &->(a) { Math.cos a }), 0.001
  end

  def test_block
    assert_in_delta 0, neibr_block(0) { |a| Math.sin a**2 }, 0.001
  end
end
