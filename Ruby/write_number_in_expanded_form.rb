# You will be given a number and you will need to return it as a string in Expanded Form. For example:
#
# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
# NOTE: All numbers will be whole numbers greater than 0.

def expanded_form(num)
  # Your code here
end

Split up number into separate elements into array
string = num.to_s.split('')

Add zeros bassed on index position and count of elements in array
hash = string.each_with_index do |num, index|
  "#{num} + #{index}"



Change back to String
.map(&:to_i)
array.join(" + ")



num.
  to_s.
  chars.
  reverse.
  map.with_index { |x, index| x.to_i * (10 ** index) }.
  reverse.
  reject { |x| x == 0}.
  join(" + ").


  Why does puts return nil but p doesn't

.tap { |debug| p debug}
