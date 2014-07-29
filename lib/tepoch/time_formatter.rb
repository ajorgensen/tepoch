class Tepoch::TimeFormatter

  def self.to_human_readable(time)
    time.strftime('%m/%d/%Y %H:%M:%S %Z')
  end

end
