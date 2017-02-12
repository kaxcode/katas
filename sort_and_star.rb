# You will be given an vector of string(s). You must sort it alphabetically (case-sensitive!!) and then return the first value.

# The returned value must be a string, and have '***' between each of its letters.

def two_sort(s)
  s.sort.map.first.split("").join("***")
end

#OR

 s.sort.first.chars.join('***')
