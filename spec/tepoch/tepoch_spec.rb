require 'spec_helper'

describe Tepoch::Tepoch do
  let(:timestamp) { 1394483688 }

  it 'should conver a unix timestamp into a time object' do
    expect(Tepoch::Tepoch.to_time(timestamp)).to eq Time.at(timestamp)
  end

  it 'handles timestamps in milliseconds as well' do
    expect(Tepoch::Tepoch.to_time(timestamp * 1000)).to eq Time.at(timestamp)
  end

  it 'convert can convert to utc' do
    expect(Tepoch::Tepoch.to_time(timestamp, true)).to be_utc
  end

end
