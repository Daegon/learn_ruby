class Timer

  def initialize
    @seconds = 0
    @time_string = '00:00:00'
  end

  def seconds=(seconds)
    @seconds = seconds

    # separate value
    seconds = @seconds % 60
    minutes = (@seconds / 60) % 60
    hours = (@seconds / 60 / 60) % 24

    s_seconds = seconds > 10 ? seconds.to_s : '0' + seconds.to_s
    s_minutes = minutes > 10 ? minutes.to_s : '0' + minutes.to_s
    s_hours = hours > 10 ? hours.to_s : '0' + hours.to_s

    @time_string = "#{s_hours}:#{s_minutes}:#{s_seconds}"
  end

  def seconds
    @seconds
  end

  def time_string
    @time_string
  end

end