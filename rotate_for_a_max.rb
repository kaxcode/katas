# 1. Take a number: 56789. Rotate left, you get 67895.

# 2. Keep the first digit in place and rotate left the other digits: 68957.

# 3. Keep the first two digits in place and rotate the other ones: 68579.

# 4. Keep the first three digits and rotate left the rest: 68597. Now it is over since keeping the first four it remains only one digit which rotated is itself.

# You have the following sequence of numbers:

# 56789 -> 67895 -> 68957 -> 68579 -> 68597

# and you must return the greatest: 68957.

# Calling this function max_rot (or maxRot or ... depending on the language)

# max_rot(56789) should return 68957

def max_rot(n)
  1.
    n = n.to_s.split("").map(&:to_i)
    set1 = n
  2.
     two = n.rotate
     set2 = n.rotate
  3.
    two
    n1 = two.rotate!.pop
    three = two.rotate
    set3 = three.unshift(n1)

  4.
    three
    n2 = three.rotate!.pop
    n2 = three.rotate!.pop
    four = three.rotate
    set4 = four.unshift(n2).unshift(n1)

  5.
    four
    n3 = four.rotate!.pop
    n3 = four.rotate!.pop
    n3 = four.rotate!.pop
    five = four.rotate
    set5 = five.unshift(n3).unshift(n2).unshift(n1)
end
