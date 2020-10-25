# frozen_string_literal: true

require_relative 'main'

def get_cord(a = 15)
  (rand * a) - a / 2
end

10.times do
  x = get_cord
  y = get_cord
  belongs = neibr(x, y, ->(x1) { Math.cos x1 })
  puts "(#{x}, #{y}) is on y = cos x" if belongs

  puts "(#{x}, #{y}) is not on y = cos x" unless belongs
end

10.times do
  x = get_cord
  y = get_cord
  belongs = neibr_block(x, y) { |x1| Math.sin x1**2 }
  puts "(#{x}, #{y}) is on y = sin x**2" if belongs

  puts "(#{x}, #{y}) is not on y = sin x**2" unless belongs
end
