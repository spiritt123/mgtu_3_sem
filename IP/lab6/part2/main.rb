# frozen_string_literal: true

# class integral
class Iter
  include Enumerable
  def each
    sum = 0
    step = 0.01
    count = 0;
    loop do
      yield sum, count
      sum = (0.0..1.0).step(step).map { |x| (x * step) / Math.sqrt(1 + x * x * x) }.inject(:+)
      step /= 10
      count += 1
    end
  end
end

def integr(err)
  real_value = 0.4297983840323041
  Iter.new.find { |sum, _| (sum - real_value).abs < err }
end
