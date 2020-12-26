# frozen_string_literal: true

puts 'input str'

str = gets

arr = str.split.map{ |x| x.to_i}
  
arr = arr.each_with_index.map { |x,i| [x, arr[ ( i + 1 ) % arr.size ], x + arr[ ( i + 1 ) % arr.size ]] }[0...-1].sort{ |x| x[2] }

print arr[0][0...2]

