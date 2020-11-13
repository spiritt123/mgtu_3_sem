class NumbersController < ApplicationController
  def input
  end

  def view
    str = params[:arr]
    if str == "" || str.nil?
      @result = 'input nil' 
    elsif !str.nil? && str.scan(/[^\D]/).empty?
      @result = "don\'t numbers"
    else
      @result = get_perfect_numbers(convert_input_to_numbers(str))
    end
  end
end
    
def is_number? string
  true if Float(string) rescue false
end

def perfect_number?(x)
  s = (1..(x / 2)).map do |a| 
    if (x % a) == 0 
      a
    end
  end
  x == s.compact.inject(:+)  
end

def get_perfect_numbers(arr)
  out = []
  arr2 = arr
  while arr2.any?
    out.append(arr2.take_while { |z| perfect_number?(z) })
    arr2 = arr2.drop_while { |y| perfect_number?(y) }.drop_while { |y| !perfect_number?(y) }
  end
  out
end

def convert_input_to_numbers(line)
  line.strip.split.map { |x| x.to_i }
end
