

def my_fun(str)
  str = str.split("");
  $i = 0;
  
  if (str[$i] == 'н') 
    str[$i] = 'т'
  end
  ++$i;
  while $i < str.length - 1 do 
    if (str[$i] == 'н') && (str[$i - 1] == ' ')
      str[$i] = 'т'
    end
  end
  if (str[$i] == 'о') 
    str[$i] = 'е'
  end
  str = str.join("");
end

