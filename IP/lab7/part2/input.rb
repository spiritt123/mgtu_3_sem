# frozen_string_literal: true

require_relative 'main'

puts 'intput 2 target {x, y}'

x1 = gets.to_f
y1 = gets.to_f
x2 = gets.to_f
y2 = gets.to_f
puts 'intput new target {x, y}'
x3 = gets.to_f
y3 = gets.to_f
puts 'intput new thich'
thich = gets.to_f

line = Line.new(x1, y1, x2, y2)
line.print
line2 = ThichLine.new(x1, y1, x2, y2, thich)
p line.target3?(x3, y3)
p line2.target3?(x3, y3)
