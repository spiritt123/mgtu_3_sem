# frozen_string_literal: true

require_relative 'main'

10.times do
  x = Random.rand(15).to_f / Random.rand(1..3)
  y = Random.rand(2.0) - 1.0
  value = neibr_block(x, y, &->(a) { Math.cos a })
  puts "(#{x}, #{y}) y = cos x" if value
  puts "(#{x}, #{y}) y != cos x" unless value
end

10.times do
  x = Random.rand(15).to_f / Random.rand(1..3)
  y = Random.rand(2.0) - 1.0
  value = neibr_block(x, y) { |a| Math.sin a**2 }
  puts "(#{x}, #{y}) y = sin x**2" if value
  puts "(#{x}, #{y}) y != sin x**2" unless value
end
