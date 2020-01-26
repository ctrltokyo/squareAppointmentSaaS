require 'icalendar'


class Calendar
  @@cal = Icalendar::Calendar.new

  def initialize(start_time, end_time, summary, description, privacy)
    @calendar_start = start_time
    @calendar_end = end_time
    @calendar_summary = summary
    @calendar_description = description
    @calendar_privacy = privacy
  end

  def createCalendar
    @@cal.event do |e|
      e.dtstart     = @calendar_start
      e.dtend       = @calendar_end
      e.summary     = @calendar_summary
      e.description = @calendar_description
      e.ip_class    = @calendar_privacy
    end
  end

  def publishCalendar
    @@cal.publish
  end
end