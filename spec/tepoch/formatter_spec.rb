require 'spec_helper'

describe Tepoch::Tepoch do
  let(:timestamp) { 1394483688}
  it 'should conver a unix timestamp into a time object' do
    Tepoch::Tepoch.to_time(timestamp).should eq Time.at(timestamp)
  end

  it 'handles timestamps in milliseconds as well' do
    Tepoch::Tepoch.to_time(timestamp * 1000).should eq Time.at(timestamp)
  end

  it 'convert can convert to utc' do
    Tepoch::Tepoch.to_time(timestamp, true).should be_utc
  end
end
