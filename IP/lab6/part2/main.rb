# frozen_string_literal: true

ireg_en = Enumerator.new do |sum|
  sum = 0;
  loop do
    sum += (x * step) / Math.sqrt(1 + x * x * x)
  end
end

def integr(start, stop, step, err)
  real_value = 0.4297983840323041
  sum = 0
  while (sum - real_value).abs > err
    sum = 0
    step /= 10
    iter_en()
  end
  sum
end
