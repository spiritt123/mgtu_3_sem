# frozen_string_literal: true


def neibr(x, y, f)
  y == f.call(x)
end

def neibr_block(x, y)
  y == yield(x)
end
