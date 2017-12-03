# Find the last element of a list.
# last( [1,2,3,4] ) # => 4
# last( "xyz" ) # => z
# last( 1,2,3,4 ) # => 4

def last(*beg, tail)
  if tail.kind_of?(Array)
    tail[-1]
  elsif tail.kind_of?(String)
    tail[-1]
  else
    tail
  end
end

# OR

def last(*args)
  args[-1].is_a?(String) ? args[-1][-1] : args.flatten[-1]
end
