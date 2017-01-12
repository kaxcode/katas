# It's pretty straightforward. Your goal is to create a function that removes the first and last characters of a string. You're given one parameter.
# Example: ('eloquent'), 'loquen')

def remove_char(string)
  string.chop.reverse.chop.reverse
end

#OR

def remove_char(string)
  string[1...-1]
end
