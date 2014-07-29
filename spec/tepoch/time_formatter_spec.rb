require 'spec_helper'

describe Tepoch::TimeFormatter do

  it 'converts a time object to a human readable format' do
    time = Time.utc(1990, 05, 05)

    human_readable = Tepoch::TimeFormatter.to_human_readable(time)

    expect(human_readable).to eq '05/05/1990 00:00:00 UTC'
  end

  it 'properly displays the time zone of the time object' do
    time = Time.new(1990, 05, 05)

    human_readable = Tepoch::TimeFormatter.to_human_readable(time)

    expect(human_readable).to eq "05/05/1990 00:00:00 #{time.zone}"
  end

end
