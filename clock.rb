class Clock
  
  MINUTES_IN_DAY = 24 * 60
  
  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end

  def self.at(hours, minutes=0)
    new(hours, minutes)
  end

  def +(mins)
    minutes_since_midnight = (hours * 60) + minutes
    minutes_since_midnight += mins
    calculate_time(minutes_since_midnight)
  end

  def calculate_time(minutes_since_midnight)
    if minutes_since_midnight > 0
      extra_time, minutes_since_midnight = minutes_since_midnight.divmod(MINUTES_IN_DAY)
      self.hours, self.minutes = minutes_since_midnight.divmod(60)
      self.class.at(hours, minutes)
    else
      minutes_since_midnight *= -1
      extra_time, minutes_before_midnight = minutes_since_midnight.divmod(MINUTES_IN_DAY)
      minutes_before_midnight = MINUTES_IN_DAY - minutes_before_midnight
      self.hours, self.minutes = minutes_before_midnight.divmod(60)
      self.class.at(hours, minutes)
    end
  end

  def -(mins)
    minutes_since_midnight = (hours * 60) + minutes
    minutes_since_midnight -= mins
    calculate_time(minutes_since_midnight)
  end

  def to_s
    "#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}"
  end

  def ==(other)
    hours == other.hours && minutes == other.minutes
  end

  # private 
  attr_accessor :hours, :minutes
end



