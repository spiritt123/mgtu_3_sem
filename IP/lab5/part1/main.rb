# frozen_string_literal: true

def my_fun(value)
  return -Float::INFINITY if value.zero?
  return Float::INFINITY if value == 2
  return Float::NAN if ((value * value) / (value - 2)).negative?

  Math.log10((value * value) / (value - 2)) * Math.exp(value)
end
