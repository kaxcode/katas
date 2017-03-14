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
    positive = array.select{ |x| x >= 0}.inject(0) { | x, y | x + y }
    [positive, negative]
  end
end
