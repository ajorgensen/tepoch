require 'tepoch/util'
require 'tepoch/clock'

module Tepoch
  class Tepoch
    def self.to_time(timestamp, to_utc = true)
      new_time = milliseconds?(timestamp) ? Time.at(timestamp / 1000) : Time.at(timestamp)

      to_utc ? new_time.utc : new_time
    end

    private

    def self.milliseconds?(timestamp)
      timestamp > 2147483648
    end
  end
end
