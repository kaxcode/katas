# Description:

# Task
# You are given N ropes, where the length of each rope is a positive integer. At each step, you have to reduce all the ropes by the length of the smallest rope.
# The step will be repeated until no ropes are left. Given the length of N ropes, print the number of ropes that are left before each step.
# Example
# For a = [3, 3, 2, 9, 7], the result should be [5, 4, 2, 1]
# You have 5 ropes:
#                  3 3 2 9 7   ( 5 left)
# step 1:          1 1 0 7 5   ( 4 left)
# step 2:          0 0 0 6 4   ( 2 left)
# step 3:          0 0 0 0 2   ( 1 left)
# step 4:          0 0 0 0 0
# Hence the result is [5, 4, 2, 1]
# Input/Output
# [input] integer array a
# length of each rope.
# 3 <= a.length <= 2000
# 1 <= a[i] <= 100
# [output] an integer array
# number of ropes before each step.

def cut_the_ropes(arr)
  i = 0
  num = arr.length
  empty = []
  while i < num do
    empty << arr.count { |x| x != 0 }
    arr = arr.reject{ |x| x == 0 }.collect { |x| x - (arr.reject{ |x| x == 0 }.min) }
    i += 1
    print empty
  end
end

# 1 Identify smallest # in array
# 2 Subtract the smallest number to all the numbes in the array
# 3 count how many number are not 0
