# frozen_string_literal: true

def integr(start, stop, step, err)
  sum = 0
  steps = 0
  while (sum - 0.4297983840323041).abs > err
    step /= 10
    sum = (start..stop).step(step).map { |x| (x * step) / Math.sqrt(1 + x * x * x) }.inject(:+)
    steps += 1
  end
  steps
end
