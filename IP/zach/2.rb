


arr = [1,2,3,4,5]
min = Float::INFINITY
for i in 0...arr.size - 1 do
  if ((arr[i] + arr[i + 1]) < min)
    min = arr[i] + arr[i+1]
  end
end

p min



