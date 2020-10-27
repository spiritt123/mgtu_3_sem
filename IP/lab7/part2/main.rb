# frozen_string_literal: true

# class line
class Line
  attr_accessor :x1, :y1, :x2, :y2
  def initialize(x1, y1, x2, y2)
    @x1 = x1;
    @y1 = y1;
    @x2 = x2;
    @y2 = y2;
  end

  def print
    p "#{@x1} : #{@y1}"
    p "#{@x2} : #{@y2}"
  end

  def target3?(x3, y3)
    ((x3 - @x1) / (@x2 - @x1) - (y3 - @y1) / (@y2 - @y1)).abs < 10e-4
  end
end

class ThichLine < Line
  attr_accessor :thich

  def initialize(x1, y1, x2, y2, thich)
    super(x1, y1, x2, y2)
    @thich = thich
  end

  def target3?(x3, y3)
    dx = (-x3 + @x1 + (@x2 - @x1) * (y3 - @y1) / (@y2 - @y1)).abs
    dy = ((x3 - @x1) * (@y2 - @y1) / (@x2 - @x1) + @y1 - y3).abs
    (dx * dy) / Math.sqrt(dx * dx + dy * dy) <= thich
  end
end
