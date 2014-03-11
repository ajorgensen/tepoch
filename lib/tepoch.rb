module Tepoch
  class Tepoch
    def self.to_time(timestamp, to_utc = true)
      new_time = milliseconds?(timestamp) ? Time.at(timestamp / 1000) : Time.at(timestamp)

      to_utc ? new_time.utc : new_time
    end

    def self.seconds_to_string(s)

      # d = days, h = hours, m = minutes, s = seconds
      m = (s / 60).floor
      s = s % 60
      h = (m / 60).floor
      m = m % 60
      d = (h / 24).floor
      h = h % 24

      output = "#{s} second#{Tepoch.pluralize(s)}" if (s > 0)
      output = "#{m} minute#{Tepoch.pluralize(m)}, #{s} second#{Tepoch.pluralize(s)}" if (m > 0)
      output = "#{h} hour#{Tepoch.pluralize(h)}, #{m} minute#{Tepoch.pluralize(m)}, #{s} second#{Tepoch.pluralize(s)}" if (h > 0)
      output = "#{d} day#{Tepoch.pluralize(d)}, #{h} hour#{Tepoch.pluralize(h)}, #{m} minute#{Tepoch.pluralize(m)}, #{s} second#{Tepoch.pluralize(s)}" if (d > 0)

      return output
    end

    def self.pluralize number
      return "s" unless number == 1
      return ""
    end

    private

    def self.milliseconds?(timestamp)
      timestamp > 2147483648
    end
  end
end
