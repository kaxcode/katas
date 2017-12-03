# Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.
def fake_bin(s)
  s.to_s.split('').map(&:to_i).map { |x| x < 5 ? '0' : '1' }.join
end

s = '45385593107843568'


### OR

def fake_bin(s)
  s.gsub(/[0-4]/,'0').gsub(/[5-9]/, '1')
end

### OR

def fake_bin(s)
  s.split('').map{ |x| x.to_i < 5 ? 0 : 1 }.join
end
