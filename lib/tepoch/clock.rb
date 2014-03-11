module Tepoch
  class Clock

    def tick(to_utc = true)
      timestamp = Time.now.to_i

      print "#{timestamp} | #{Tepoch.to_time(timestamp, to_utc)} | #{Util.seconds_to_string(timestamp)} \r"
    end

  end
end
