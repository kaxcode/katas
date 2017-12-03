# Reverse every other word in a given string, then return it. Don't forget to include the spaces!

def reverse_alternate(string)
  string.split(' ').values_at(1, 3, 5)
end

.values_at(* self.each_index.select {|i| i.even?})
