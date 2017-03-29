# Simple Fun #198: Cake SliceTask
#
# A cake is sliced with n straight lines. Your task is to calculate the maximum number of pieces the cake can have.
# Example
#
# For n = 0, the output should be 1.
#
# For n = 1, the output should be 2.
#
# For n = 2, the output should be 4.
#
# For n = 3, the output should be 7.

def cake_slice(n)
  ((n**2) + n + 2)/2
end
