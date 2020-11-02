# frozen_string_literal: false

require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'main'

# tests
class TestPart1 < Minitest::Test
  def gen_new_word(size)
    (0..size).map { ('a'..'z').to_a[Random.rand(26)] }.join
  end

  def add_first_char(first, second)
    first << 'n'
    second << 't'
  end

  def add_last_char(first, second)
    first << 'o'
    second << 'e'
  end

  def gen_2_new_str(first, second)
    (1..Random.rand(1..8)).each do
      add_first_char(first, second) if Random.rand(1) == 1
      word = gen_new_word(Random.rand(1..7))
      first << word
      second << word
      add_last_char(first, second) if Random.rand(1) == 1
      first << ' '
      second << ' '
    end
    first
  end

  def test_first_arg
    first = ''
    second = ''
    assert_equal gen_2_new_str(first, second), second
  end
end
