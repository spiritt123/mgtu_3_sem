# frozen_string_literal: true

# class line
class Line
  attr_accessor :x1, :y1, :x2, :y2
  def initialize(coord_x1, coord_y1, coord_x2, coord_y2)
    @x1 = coord_x1
    @y1 = coord_y1
    @x2 = coord_x2
    @y2 = coord_y2
  end

  def print
    p "#{@x1} : #{@y1}"
    p "#{@x2} : #{@y2}"
  end

  def target3?(coord_x3, coord_y3)
    ((coord_x3 - @x1) / (@x2 - @x1) - (coord_y3 - @y1) / (@y2 - @y1)).abs < 10e-4
  end
end

# class line with thich
class ThichLine < Line
  attr_accessor :thich

  def initialize(coord_x1, coord_y1, coord_x2, coord_y2, thich)
    super(coord_x1, coord_y1, coord_x2, coord_y2)
    @thich = thich
  end

  def get_dx(coord_x3, coord_y3)
    (-coord_x3 + @x1 + (@x2 - @x1) * (coord_y3 - @y1) / (@y2 - @y1)).abs
  end

  def get_dy(coord_x3, coord_y3)
    ((coord_x3 - @x1) * (@y2 - @y1) / (@x2 - @x1) + @y1 - coord_y3).abs
  end

  def target3?(coord_x3, coord_y3)
    (get_dx(coord_x3, coord_y3) * get_dy(coord_x3, coord_y3)) / Math.sqrt(dx * dx + dy * dy) <= @thich
  end
end
