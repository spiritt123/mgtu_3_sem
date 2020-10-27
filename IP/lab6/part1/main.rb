# frozen_string_literal: true

def integr(start, stop, step, err)
  sum = 0
  steps = 0
  while (sum - 0.4297983840323041).abs > err
    sum = 0
    step /= 10
    (start..stop).step(step) { |x| sum += (x * step) / Math.sqrt(1 + x * x * x) }
    steps += 1
  end
  steps
end
