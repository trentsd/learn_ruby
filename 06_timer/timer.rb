class Timer
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
  end

  def time_string
    left = @seconds
    hours_place = left / 60**2
    left = left % 60**2
    minutes_place = left / 60
    seconds_palce = left % 60
    @time_string = "#{hours_place.to_s.rjust(2,'0')}:#{minutes_place.to_s.rjust(2,'0')}:#{seconds_palce.to_s.rjust(2,'0')}"
  end
end
