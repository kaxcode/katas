# You get an array of numbers, return the sum of all of the positives ones.
#
# Example [1,-4,7,12] => 1 + 7 + 12 = 20
#
# Note: array may be empty, in this case return 0.


arr.empty? || arr.all?(&:negative?) ? 0 : arr.delete_if { |x| x < 0 }.inject{ |x, y| x + y }
