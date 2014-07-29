require 'spec_helper'

describe Tepoch::Interface do

  describe 'timestamp to human readable' do
    it 'converts unix timestamps to human readable utc' do
      timestamp = 641865600
      human_readable_time = Tepoch::Interface.timestamp_to_human_readable(timestamp)

      expect(human_readable_time).to eq '05/05/1990 00:00:00 UTC'
    end

    it 'converts unix timestamp to human readable local timezone' do
      timestamp = 641865600
      human_readable_time = Tepoch::Interface.timestamp_to_human_readable(timestamp, true)

      expect(human_readable_time).to eq Tepoch::TimeFormatter.to_human_readable(Time.at(timestamp))
    end
  end

  describe 'unix timestamp right now' do
    it 'shows the current unix timestamp right now' do
      timestamp = Tepoch::Interface.timestamp_now
      t = Time.at(timestamp)

      Timecop.freeze(t) do
        expect(timestamp).to eq Time.now.to_i
      end
    end

    it 'shows the current unix timestamp right now in milliseconds' do
      timestamp = Tepoch::Interface.timestamp_now(true)
      t = Time.at(timestamp)

      Timecop.freeze(t) do
        expect(timestamp).to eq Time.now.to_i
      end
    end
  end

  describe 'days since epoch' do
    it 'shows the number of days since epoch' do
      time = Time.new(1990, 5, 5, 23, 0, 0, "-04:00")

      Timecop.freeze(time) do
        days = Tepoch::Interface.days_since_epoch
        expect(days).to eq 7430
      end
    end

    it 'shows the number of days since epoch for local' do
      time = Time.new(1990, 5, 5, 23, 0, 0, "-04:00")

      Timecop.freeze(time) do
        days = Tepoch::Interface.days_since_epoch(true)
        expect(days).to eq 7429
      end
    end
  end

  describe 'seconds since start of day' do
    it 'shows the seconds since start of day' do
      time = Time.new(1990, 5, 5, 0, 0, 25, "-04:00")

      Timecop.freeze(time) do
        seconds = Tepoch::Interface.seconds_since_start_of_day
        expect(seconds).to eq 14425
      end

    end

    it 'shows the seconds since start of day for local' do
      time = Time.new(1990, 5, 5, 0, 0, 30, "-04:00")

      Timecop.freeze(time) do
        seconds = Tepoch::Interface.seconds_since_start_of_day(true)
        expect(seconds).to eq 30
      end

    end
  end

  describe 'minutes since start of day' do
    it 'shows the minutes since start of day' do
      time = Time.new(1990, 5, 5, 0, 5, 25, "-04:00")

      Timecop.freeze(time) do
        minutes = Tepoch::Interface.minutes_since_start_of_day
        expect(minutes).to eq 245
      end

    end

    it 'shows the minutes since start of day for local' do
      time = Time.new(1990, 5, 5, 0, 5, 30, "-04:00")

      Timecop.freeze(time) do
        minutes = Tepoch::Interface.minutes_since_start_of_day(true)
        expect(minutes).to eq 5
      end

    end
  end

  describe 'hours since start of day' do
    it 'shows the hours since start of day' do
      time = Time.new(1990, 5, 5, 23, 1, 0, "-04:00")

      Timecop.freeze(time) do
        hours = Tepoch::Interface.hours_since_start_of_day
        expect(hours).to eq 3
      end

    end

    it 'shows the hours since start of day for local' do
      time = Time.new(1990, 5, 5, 3, 2, 0, "-04:00")

      Timecop.freeze(time) do
        hours = Tepoch::Interface.hours_since_start_of_day(true)
        expect(hours).to eq 3
      end

    end
  end
end
