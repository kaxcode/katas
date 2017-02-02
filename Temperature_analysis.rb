You were given a string of integer temperature values. Create a function lowest_temp(t) and return the lowest value or None/null/Nothing if the string is empty.


def lowest_temp(t)
  t.split.map { |x| x.to_i }.sort_by { |i| i }.min
end

## or

def lowest_temp(t)
  t.split.map(&:to_i).min
end
