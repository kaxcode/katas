# You are given an array including a list of basketball teams and their scores showing points scored vs points lost:
#
results = [
  ["Dallas Mavericks", "492:513"],
  ["Los Angeles Lakers", "641:637"],
  ["Houston Rockets", "494:458"],
  ["Los Angeles Clippers", "382:422"],
  ["New Orleans Pelicans", "433:454"],
  ["Oklahoma City Thunder", "315:318"],
  ["Golden State Warriors", "559:503"],
  ["Memphis Grizzlies", "550:511"],
  ["Portland Trail Blazers", "527:520"],
  ["Minnesota Timberwolves", "495:494"],
  ["Utah Jazz", "399:402"],
  ["Sacramento Kings", "420:431"],
  ["San Antonio Spurs", "469:460"],
  ["Phoenix Suns", "523:522"],
  ["Denver Nuggets", "646:658"]
]
# Your task it to return a number which represents the total number of points scored by a team from Los Angeles.
# In the above example the correct result is a number of 1023, as Los Angeles Lakers got 641 and Los Angeles Clippers got 382, so 641 + 382 = 1023.

def get_los_angeles_points(results)
  results.select { | a, b | a.include?("Los Angeles") }.map { |x| x[1].split(":") }.map(&:to_i)
end
