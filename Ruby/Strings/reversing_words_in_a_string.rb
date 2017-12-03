# You need to write a function that reverses the words in a given string. If this is not clear enough, here are some examples:
# ('I am an expert at this'), 'this at expert an am I'
# Happy coding!

def reverse(string)
  string.split(" ").reverse.join(" ")
end

#OR

def reverse(string)
  string.split.reverse.join(' ')
end
