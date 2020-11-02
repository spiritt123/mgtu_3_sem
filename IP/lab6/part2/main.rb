# frozen_string_literal: true

# class integral
class Iter
  include Enumerable
  def each
    sum = 0
    step = 0.01
    loop do
      yield sum
      sum = 0
      (0.0..1.0).step(step) { |x| sum += (x * step) / Math.sqrt(1 + x * x * x) }
      step /= 10
    end
  end
end

def integr(err)
  real_value = 0.4297983840323041
  Iter.new.find { |sum| (sum - real_value).abs < err }
end
