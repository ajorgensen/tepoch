module Tepoch
  class Clock

    def self.tick(to_utc = true)
      format_time(Time.now.to_i, to_utc)
    end

    def self.format_time(timestamp, to_utc = true)
      "#{timestamp} | #{Tepoch.to_time(timestamp, to_utc)} | #{Util.seconds_to_string(timestamp)} \r"
    end

  end
end
