# Контроллер, который делает всю работу в этом приложении
class XmlController < ApplicationController

  # before_action :parse_params, only: :index

  def index
    str = params[:arr]
    if str == '' || str.nil?
      @result = 'input nil'
    elsif !str.nil? && str.scan(/[^\D]/).empty?
      @result = "don\'t numbers"
    else
      @result = get_perfect_numbers(convert_input_to_numbers(str))
    end

    data = if @result.instance_of? String
             { message: "Неверные параметры запроса (arr = #{@result})" }
           else
             @result.map { |elem| { elem: elem} }
           end

    respond_to do |format|
      format.xml { render xml: data.to_xml }
      format.rss { render xml: data.to_xml }
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
