def clock_angle(time)
  hour = (time.split(":"))[0].to_f
  min = (time.split(":"))[1].to_f
  hour_angle = ((hour + (min / 60)) / 12) * 360
  min_angle = (min / 60) * 360
  angle = ((hour_angle - min_angle) % 360).abs
  if angle > 180
    angle = 360 - angle
  end
  angle
end
