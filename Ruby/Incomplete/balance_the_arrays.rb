# Check that the two provided arrays both contain the same number of different unique items, regardless of order. For example in the following:
# [a,a,a,a,b,b] and [c,c,c,d,c,d]
# Both arrays have four of one item and two of another, so balance should return true.

arry1 = ["a","a","a","a","b","b"]
arry2 = ["c","c","c","d","c","d"]

# Do we have the same count of uniq elements in arry1 as we do in arry2?
# - Fist, find the count of each uniq elements in each array.
  # - Turn array into a hash with the value being the count.
    # { "a" => 4, "b" => 2}
    # { "c" => 4, "d" => 2}
# - Compare the count of uniq elements.
# - Create ternary.


hash = {}
arry1.each do |val|
  if hash[val]
    hash[val] = hash[val] + 1
  else
    hash[val] = 1
  end
end

p hash.values.sort

def balance(arry1, arr2)
  counter(arry1) == counter(arry2)
end


#OR -------------------------------------

def arr(arry1, arry2)
  uniq_count(arry1) == uniq_count(arry2)
end

def balance(arr)
  arr.uniq.map { |letter| arr.count(letter)}.sort
end
