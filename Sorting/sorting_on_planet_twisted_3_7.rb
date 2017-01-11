# The values of the digits 3 and 7 are twisted.
#
# Our 3 means 7 on the planet Twisted-3-7. And 7 means 3.
#
# Your task is to create a method, that can sort an array the way it would be sorted on Twisted-3-7.
#
# 7 Examples from a friend from Twisted-3-7:
# [1,2,3,4,5,6,7,8,9] -> [1,2,7,4,5,6,3,8,9]
# [12,13,14] -> [12,14,13]
# [9,2,4,7,3] -> [2,7,4,3,9]

# Error. This sort and removed the 7 and 3.
# def sort_twisted37(array)
#     new_array = array. { |n| n.to_s.include?('7') || n.to_s.include?('3') }
#     new_array = array.sort
#     return new_array
# end

# - array needs to be sorted
# - the value of 3 and 7 need to be arranged to be in reverse sorting order
# - the index needs to stay the same after sort
# - sort_by block should be {|i| i}

def sort_twisted37(array)
  array.sort_by {|i| i.to_s.gsub(/[73]/, '7' => '3', '3' => '7').to_i }
end

#OR

def sort_twisted37(arr)
  arr.sort_by { |x| x.to_s.tr('37', '73').to_i }
end
