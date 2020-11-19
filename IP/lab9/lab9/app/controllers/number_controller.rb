# frozen_string_literal: true

# class controller
class NumberController < ApplicationController
  def inpup;
    render layout: false
  end

  def view
    str = params[:arr]
    if str == '' || str.nil?
      @result = 'input nil'
    elsif !str.nil? && str.scan(/[^\D]/).empty?
      @result = "don\'t numbers"
    else
      @result = get_perfect_numbers(convert_input_to_numbers(str))
    end
    respond_to do |format|
      format.html
      format.json do
        render json:
          {type: @result.class.to_s, value: @result }
      end
    end
  end
end

def perfect_number?(num)
  s = (1..(num / 2)).select { |a| (num % a).zero? }
  num == s.compact.inject(:+)
end

def get_perfect_numbers(arr)
  out = []
  inp = []
  arr = arr.drop_while { |y| !perfect_number?(y) }
  arr.each do |x|
    if !perfect_number?(x)
      out.append(inp) if inp.any?
      inp = []
    else
      inp.append(x)
    end
  end
  out.append(inp) if inp.size.positive?
  out
end

def convert_input_to_numbers(line)
  line.strip.split.map(&:to_i)
end
