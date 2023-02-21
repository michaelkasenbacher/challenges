class Meetup
  require 'date'

  DAY = {"sunday" => 0, "monday" => 1, "tuesday" => 2, "wednesday" => 3, "thursday" => 4, "friday" => 5, "saturday" => 6}
  WEEK = {"first" => 0, "second" => 1, "third" => 2, "fourth" => 3, "fifth" => 4, "last" => -1}
  
  def initialize(year, month)
    @start_date = Date.new(year, month)
    @end_date = (start_date >> 1) -1
  end

  def day(weekday, week)
    all_days = []
    start_date.upto(end_date) {|day| all_days << day}
    output = all_days.select {|day| day.wday == DAY[weekday.downcase]}
    if week == "teenth"
      output.select {|day| [13,14,15,16,17,18,19].include?(day.mday)}.first
    else
      output [WEEK[week.downcase]]
    end  
  end

  private
  attr_reader :start_date, :end_date
end

p meetup = Meetup.new(2017, 4)











