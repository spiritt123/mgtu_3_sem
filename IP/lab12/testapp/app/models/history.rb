class History < ApplicationRecord
  validates :arr, presence: true, uniqueness: true
  validates :output, presence: true

  class << self
    def create_with_output(str)
      if where(arr: str).count().zero?
        create(arr: str, output: out(str))
      end
      @result = where(arr: str).first
    end

    private

    def out(str)
      if str == '' || str.nil?
        'input nil'
      elsif !str.nil? && str.strip.split.map(&:to_i).join(' ') != str.strip
        "don\'t numbers"
      else
        get_perfect_numbers(convert_input_to_numbers(str))
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
          inp = Array.new
        else
          inp.append(x)
        end
      end
      out.append(inp) if inp.size.positive?
      out
    end

    def convert_input_to_numbers(line)
      line.split.map(&:to_i)
    end
  end
end
