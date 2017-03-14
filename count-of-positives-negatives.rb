# Given an array of integers.
#
# Return an array, where the first element is the count of positives numbers and the second element is sum of negative numbers.
#
# If the input array is empty or null, return an empty array:

def count_positives_sum_negatives(array)
  if array.empty?
    []
  else
    negative = array.select{ |x| x <= 0}.inject(0) { | x, y | x + y }
    positive = array.count { |x| x != 0 && x >= 0 }
    [positive, negative]
  end
end


### OR

def count_positives_sum_negatives(array)
    [array.count{|n| n > 0}, array.select{|n| n < 0}.reduce(0, :+)]
end
