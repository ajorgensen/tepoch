require 'spec_helper'

describe Tepoch::Tepoch do
  it 'should conver a unix timestamp into a time object' do
    timestamp = 1394483688
    expect(Tepoch::Tepoch.to_time(timestamp)).to eq Time.at(1394483688)
  end

  it 'handles timestamps in milliseconds as well' do
    timestamp = 1394483688000
    expect(Tepoch::Tepoch.to_time(timestamp)).to eq Time.at(1394483688)
  end
end
