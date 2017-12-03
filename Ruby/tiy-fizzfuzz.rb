# In this exercise, you will have to create a function named tiyFizzBuzz. This function will take on a string parameter and will return that string with some characters replaced, depending on the value:
#
# If a letter is a upper case consonants, replace that character with "Iron".
# If a letter is a lower case consonants or a non-alpha character, do nothing to that character
# If a letter is a upper case vowel, replace that character with "Iron Yard".
# If a letter is a lower case vowel, replace that character with "Yard".

string = "Hello WORLD!"

def tiy_fizz_buzz(string)
  chars = string.split('')
  chars.each { |c| c }
  # string.each_char do |letter|
    big_vowel = %w(A E I O U)
    lil_vowel = %w(a e i o u)
    if ('A'..'Z').include?(letter.to_s)
      "Iron"
      print letter
    elsif big_vowel.include?(letter)
      "IronYard"
    elsif lil_vowel.include?(letter)
      "Yard"
    else
      letter
    end
  end
end
