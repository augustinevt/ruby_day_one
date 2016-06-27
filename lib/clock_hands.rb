#minute formula (minute_angle = m/60 * 360)
#hour formula (hour_angle = h/12 * 360 + m/60 * 30)

# hour /.+(?=:)/.match('12:30')

# minute /(?<=:).+/.match('12:30')

class String
  def clock_hands
    minute = /(?<=:).+/.match(self).to_s.to_f
    minute_angle = minute/60 * 360
    hour = /.+(?=:)/.match(self).to_s.to_f
    hour_angle = hour/12 * 360 + minute/60 * 30
    (hour_angle - minute_angle).abs
  end
end
