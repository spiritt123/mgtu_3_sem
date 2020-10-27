require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'main'

class TestPart1 < Minitest::Test
  Chars = ('a'..'z').to_a

  def gen_new_word(size)
    (0..size).map {('a'..'z').to_a[Random.rand(26)]}.join 
  end
  
  def gen_2_new_str(first, second)
    (1..(Random.rand(5) + 1)).each do
      if Random.rand(1) == 1
        first << 'n'
        second << 't'
      end
      word = gen_new_word(Random.rand(1..7))
      first << word
      second << word
      if Random.rand(1) == 1
        first << 'o'
        second << 'e'
      end
      first << ' '
      second << ' ' 
    end
    first
  end

  def test_first_arg
    first = "a"
    second = "a"
    assert_equal gen_2_new_str(first,second), second
  end
end
