# frozen_string_literal: true

=begin
С клавиатуры вводится последовательность чисел через пробел. 
Необходимо найти пару подряд идущих чисел, сумма которых минимальна, и вывести ее на печать.
=end

puts 'input str'

str = gets

if !str.match?(/^(\d|\s)+$/)
  print 'is\'n only numbers'
else
  arr = str.split.map(&:to_i)

  print arr.each_cons(2).map.min_by { |x| x[0] + x[1] }
end
