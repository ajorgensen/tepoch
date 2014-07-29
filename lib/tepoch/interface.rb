class Tepoch::Interface

  def self.timestamp_to_human_readable(timestamp, local = false)
    timestamp = timestamp / 1000 if Tepoch::Util.milliseconds?(timestamp)
    time = Time.at(timestamp)
    local ? Tepoch::TimeFormatter.to_human_readable(time) : Tepoch::TimeFormatter.to_human_readable(time.utc)
  end

  def self.timestamp_now(in_ms = false)
    in_ms ? (Time.now.to_f * 1000).to_i : Time.now.to_i
  end

  def self.days_since_epoch(local = false)
    time = local ? Time.now : Time.now.utc

    date = DateTime.new(time.year, time.month, time.day)

    (date - Tepoch::Util.epoch)
  end

  def self.seconds_since_start_of_day(local = false)
    time = local ? Time.now : Time.now.utc

    (time.hour * 60 * 60 + time.sec)
  end

  def self.minutes_since_start_of_day(local = false)
    time = local ? Time.now : Time.now.utc

    (time.hour * 60 + time.min)
  end

  def self.hours_since_start_of_day(local = false)
    time = local ? Time.now : Time.now.utc

    time.hour
  end

end
