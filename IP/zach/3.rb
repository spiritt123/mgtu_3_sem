
p %w[aa bbb cccc].reduce(0) { |sum, x| sum + x.length}


printf 'Input the sequence of numbers separated by a space: '
arr = gets.chomp.split.map(&:to_i)
an = arr.any?(&:even?) ? arr.take_while(&:odd?) : arr[1..arr.size - 2]
s=an.inject(0){|sum,x| sum+x}
printf "The: #{s}\n"

foo() {}

def foo
  yield x
end

