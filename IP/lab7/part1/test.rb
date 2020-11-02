# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'main'

# tests file
class TestPart1 < Minitest::Test
  def test_null_file
    assert_equal 1, UpdateFile.update('sfsfsd')
  end

  def test_1
    assert UpdateFile.update('file1.txt').zero?, true
  end

  def test_2
    assert UpdateFile.update('file2.txt').zero?, false
  end

  def test_3
    assert UpdateFile.update('file3.txt').zero?, true
  end
end
