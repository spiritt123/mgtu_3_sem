# frozen_string_literal: true

def integr(start, stop, step, err)
  real_value = 0.4297983840323041
  sum = 0
  while (sum - real_value).abs > err
    sum = 0
    step /= 10
    (start..stop).step(step) do |x|
      sum += (x * step) / Math.sqrt(1 + x * x * x)
    end
  end
  sum
end
