# In this kata, you will do addition and subtraction on a given string. The return value must be a 'string'.
#
# Example: calculate('1plus2plus3minus4') should return '2'.

def calculate(str)
  str.gsub! 'plus', '+'
  str.gsub! 'minus', '-'
end
