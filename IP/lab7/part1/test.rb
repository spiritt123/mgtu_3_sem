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
    result = UpdateFile.update('file1.txt').zero?
    File.delete('n_file1.txt')
    assert true, result
  end

  def test_2
    result = UpdateFile.update('file2.txt').zero?
    File.delete('n_file2.txt')
    assert true, result
  end

  def test_3
    result = UpdateFile.update('file3.txt').zero?
    File.delete('n_file3.txt')
    assert true, result
  end
end
