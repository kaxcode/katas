# Solved Jenny's secret message
def greet(name)
  if name == "Johnnny"
    "Hello, my love!"
  else
    "Hello, #{name}!"
  end
end

# Especially Joyful Numbers
# Write a function numberJoy() which tests if a positive integer n is Harshad and returns True if the product of its digit sum, and its digit sum reversed, equals n. Otherwise return False.
#Number needs to be split by each integer and added together. The sum needs to be divided by the starting number and be split with no remainder. If sum number is reversed and multiplied by the sum number it should equal begning number and then it would be true.
def number_joy(n)
  num = n.to_s.chars.map(&:to_i)
  sum_total = num.inject(0) {|x, y| x + y}
  reverse = sum_total.to_s.reverse.to_i
  (n % sum_total == 0) && (reverse * sum_total == n)
  # (n % sum_total == 0) && (reverse * sum_total == n) ? true : false
end

# Without any enumerable
  # ----------------------
  # count = 0
  # number = start_number
  # while number <= end_number
  #   if !number.to_s.include?("5")
  #     count = count + 1
  #   end
  #
  #   number = number + 1
  # end
  #
  # return count

  # One liner
  # ---------
  #(start_number..end_number).count { |number| !number.to_s.include?("5") }

  # enumerable with new array
  # -------------------------
  numbers = (start_number..end_number).to_a
  new_numbers = numbers.delete_if { |number| number.to_s.include?('5') }
  n = new_numbers.length

  return n      # n amount of numbers
