# frozen_string_literal: true

def my_fun!(str)
  str.split(' ').each { |x| x[0] = 't' if x[0] == 'n' }.each { |x| x[-1] = 'e' if x[-1] == 'o' } .join(' ')
end
