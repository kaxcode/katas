# The idea for this Kata came from 9gag today.here
#
# You'll have to translate a string to Pilot's alphabet (NATO phonetic alphabet) wiki.
#
# Like this:
#
# Input If you can read
#
# Output Indian Foxtrot Yankee Oscar Uniform Charlie Alfa November Romeo Echo Alfa Delta
#
# Some notes Keep the punctuation, and remove the spaces.
words = 'If you can read'
def to_nato(words)
  words = words.gsub(/\s+/, "").chars

  words.each do |word|
    p word
  end
end


words = 'If you can read'
words = words.upcase
words = words.gsub(/\s+/, "").chars
def to_nato(words)
  words.each do |n|
    case
    when n == "A"
      "Alpha"
    when n == "B"
      "Bravo"
    when n == "C"
      "Charlie"
    when n == "D"
      "Delta"
    when n == "E"
      "Echo"
    when n == "F"
      "Foxtrot"
    when n == "G"
      "Golf"
    when n == "H"
      "Hotel"
    when n == "I"
      "India"
    when n == "J"
      "Juliet"
    when n == "K"
      "Kilo"
    when n == "L"
      "Lima"
    when n == "M"
      "Mike"
    when n == "N"
      "November"
    when n == "O"
      "Oscar"
    when n == "P"
      "Papa"
    when n == "Q"
      "Quebec"
    when n == "R"
      "Romeo"
    when n == "S"
      "Sierra"
    when n == "T"
      "Tango"
    when n == "U"
      "Uniform"
    when n == "V"
      "Victor"
    when n == "W"
      "Whiskey"
    when n == "X"
      "X-Ray"
    when n == "Y"
      "Yanke"
    when n == "Z"
      "Zulu"
    end
  end
end
