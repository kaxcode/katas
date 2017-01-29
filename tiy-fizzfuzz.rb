# In this exercise, you will have to create a function named tiyFizzBuzz. This function will take on a string parameter and will return that string with some characters replaced, depending on the value:
#
# If a letter is a upper case consonants, replace that character with "Iron".
# If a letter is a lower case consonants or a non-alpha character, do nothing to that character
# If a letter is a upper case vowel, replace that character with "Iron Yard".
# If a letter is a lower case vowel, replace that character with "Yard".

string = "Hello WORLD!"
string = string.chars
big_vowel = [ "A", "E", "I", "O", "U"]
lil_vowel = ["a", "e", "i", "o", "u"]
def tiy_fizz_buzz(string)
  string.each do |n|
    if n == n.upcase
      p  "Iron"
    if n == big_vowel
      p  "Iron Yard"
    if n == lil_vowel
      p  "Yard"
    else
      p n
    end
  end
end
