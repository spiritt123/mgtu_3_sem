
e = 10e-3
a = 0
b = 1
step = 1.0
real_value = 0.2761423749154
sum = 0
while ((sum - real_value) < e)
  sum = 0
  step /= 10
  (a..b).step(step) do |x|
    sum += (x * e) / (Math.sqrt(1 + x * x * x))
  end
end
puts sum


