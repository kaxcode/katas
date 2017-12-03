# Create function that takes one positive three digit integer and rearanges its digits to get maximum possible number. Assume that argument is integer. Return null (nil for ruby) if argument is not valid.
#
# maxRedigit(123); // returns 321

def max_redigit(num)
  num.to_s.split('').map(&:to_i).sort { |x,y| y <=> x }.join("")
end
