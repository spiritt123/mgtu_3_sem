

def my_fun(x)
  if (x == 0) 
    return -Float::INFINITY
  end
  if (x == 2)
    return Float::INFINITY
  end
  if ((x * x)/(x - 2) < 0)
    return Float::NAN
  end
  (Math.log10((x * x)/(x - 2))) * Math.exp(x);
end

