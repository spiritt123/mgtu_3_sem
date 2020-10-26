# frozen_string_literal: true

def neibr(x_coord, y_coord, func)
  y_coord == func.call(x_coord)
end

def neibr_block(x_coord, y_coord)
  y_coord == yield(x_coord)
end
