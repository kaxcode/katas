# Write funcion sumR which returns the sum of values in a given list. Try no to cheat and provide recursive solution.

def sum_r(x)
  if x.empty?
    0
  else
    x.inject { |x, y| x + y }
  end
end

sum_r(x)
