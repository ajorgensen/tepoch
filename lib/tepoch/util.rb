module Tepoch
  class Util
    def self.seconds_to_string(s)

      # d = days, h = hours, m = minutes, s = seconds
      m = (s / 60).floor
      s = s % 60
      h = (m / 60).floor
      m = m % 60
      d = (h / 24).floor
      h = h % 24

      output = "#{s} second#{Util.pluralize(s)}" if (s > 0)
      output = "#{m} minute#{Util.pluralize(m)}, #{s} second#{Util.pluralize(s)}" if (m > 0)
      output = "#{h} hour#{Util.pluralize(h)}, #{m} minute#{Util.pluralize(m)}, #{s} second#{Util.pluralize(s)}" if (h > 0)
      output = "#{d} day#{Util.pluralize(d)}, #{h} hour#{Util.pluralize(h)}, #{m} minute#{Util.pluralize(m)}, #{s} second#{Util.pluralize(s)}" if (d > 0)

      return output
    end

    def self.pluralize number
      return "s" unless number == 1
      return ""
    end

    def self.epoch
      Date.new(1970,1,1)
    end

    def self.milliseconds?(timestamp)
      timestamp > 2147483648
    end

  end
end
