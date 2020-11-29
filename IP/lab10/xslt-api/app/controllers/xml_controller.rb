# Контроллер, который делает всю работу в этом приложении
class XmlController < ApplicationController

  def index
    str = params[:arr]
    @result = if str == '' || str.nil?
                "input nil"
              elsif !str.nil? && str.strip.split.map(&:to_i).join(' ') != str.strip
                "don\'t numbers"
              else
                get_perfect_numbers(convert_input_to_numbers(str))
              end

    data = if @result.instance_of? String
             { message: "Invalid request parameters(arr = #{@result})" }
           else
             @result.map { |elem| { elem: elem} }
           end

    respond_to do |format|
      format.html { render inline: data.to_s }
      format.xml { render xml: data.to_xml }
      format.rss { render xml: data.to_xml }
    end
  end

  private

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
end

