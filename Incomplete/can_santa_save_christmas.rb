durations = ["00:30:00", "02:30:00", "00:15:00"]

def determineTime(durations)
  durations.each do |t|
    t.strftime "%H:%M:%S"
  end


end


durations.map { |duration| duration.split(":").map(&:to_i) }.map { |h,m,s| s + m*60 + h * 60 * 60 }
  .inject(:+)
  .to_i
  <= 24 * 60 * 60
