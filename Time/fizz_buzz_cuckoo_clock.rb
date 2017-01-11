# Your plan
#
# When a minutes is evenly divisible by three, the clock will say the word "Fizz".
# When a minutes is evenly divisible by five, the clock will say the word "Buzz".
# When a minutes is evenly divisible by both, the clock will say "Fizz Buzz", with two exceptions:
# On the hours, instead of "Fizz Buzz", the clock door will open, and the cuckoo bird will come out and "Cuckoo" between one and twelve times depending on the hours.
# On the half hours, instead of "Fizz Buzz", the clock door will open, and the cuckoo will come out and "Cuckoo" just once.
# With minutess that are not evenly divisible by either three or five, at first you had intended to have the clock just say the numbers ala Fizz Buzz, but then you decided at least for version 1.0 to just have the clock make a quiet, subtle "tick" sound for a little more clock nature and a little less noise.
# Your input will be a string containing hours and minutes values in 24-hours time, separated by a colon, and with leading zeros. For example, 1:34 pm would be "13:34".
#
# Your return value will be a string containing the combination of Fizz, Buzz, Cuckoo, and/or tick sounds that the clock needs to make at that time, separated by spaces. Note that although the input is in 24-hours time, cuckoo clocks' cuckoos are in 12-hours time.
#
# Some examples
#
# "13:34"       "tick"
# "21:00"       "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
# "11:15"       "Fizz Buzz"
# "03:03"       "Fizz"
# "14:30"       "Cuckoo"
# "08:55"       "Buzz"
# "00:00"       "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
# "12:00"       "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"

def fizz_buzz_cuckoo_clock(time)
  hours, minutes = time.split(":").map(&:to_i)

  p minutes
  p hours
  case
   when minutes == 0
     if hours > 12
       hours = hours - 12
     end
     if hours == 0
       hours = 12
     end
     p minutes
     p hours
    ("Cuckoo " * hours).strip
   when minutes == 30
     "Cuckoo"
   when minutes % 3 == 0 && minutes % 5 == 0
     "Fizz Buzz"
   when minutes % 3 == 0
     "Fizz"
   when minutes % 5 == 0
     "Buzz"
   else
     "tick"
   end
end
