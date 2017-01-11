# Replace all vowel to exclamation mark in the sentence. aeiouAEIOU is vowel.
# Examples
#
# replace("Hi!") === "H!!"
# replace("!Hi! Hi!") === "!H!! H!!"
# replace("aeiou") === "!!!!!"
# replace("ABCDE") === "!BCD!"


def replace(vowel)
  vowel.gsub(/[aeiouAEIOU]/, "!")
end

# OR

def replace(s)
  s.gsub(/([aeiou])/i, '!')
end
