def measure(count = 1)
  start = Time.now
  count.times {yield}
  stop = Time.now
  (stop.to_f - start.to_f) / count
end