# Batman & Robin have gotten into quite a pickle this time. The Joker has mixed up their iconic quotes and also replaced one of the characters in their names, with a number. They need help getting things back in order.
#
# Implement the getQuote method which takes in an array of quotes, and a string comprised of letters and a single number (e.g. "Rob1n") where the number corresponds to their quote indexed in the passed in array.
#
# Return the quote along with the character who said it:
#
# Hint: You are guaranteed that the number in the passed in string is placed somewhere after the first character of the string. The quotes either belong to "Batman", "Robin", or "Joker".

class BatmanQuotes
  def self.get_quote(quotes,hero)
    index = hero.match(/\d+/)[0].to_i
    case hero[0]
    when "R"
      hero = "Robin"
    when "B"
      hero = "Batman"
    when "J"
      hero = "Joker"
    end
    "#{hero}: #{quotes[index]}"
  end
end

### OR

class BatmanQuotes
  def self.get_quote(quotes, hero)
    {'R' => 'Robin', 'J' => 'Joker', 'B' => 'Batman'}[hero[0]] + ': ' + quotes[hero[/\d+/].to_i];
  end
end