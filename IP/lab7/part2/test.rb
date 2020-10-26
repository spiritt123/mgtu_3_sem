# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'main'

# tests file
class TestPart1 < Minitest::Test
  def test_null_file
    !UpdateFile.update('sfsfsd').zero?
  end

  def test_1
    UpdateFile.update('file1.txt').zero?
  end

  def test_2
    UpdateFile.update('file2.txt').zero?
  end

  def test_3
    UpdateFile.update('file3.txt').zero?
  end
end
