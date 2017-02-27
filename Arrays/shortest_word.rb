# x Simple, given a string of words, return the length of the shortest word(s).
#
# String will never be empty and you do not need to account for different data types.

def find_short(s)
   s.split(" ").min { |a, b| a.length <=> b.length }.size
end


### OR

def find_short(s)
  s.split.map(&:size).min
end
