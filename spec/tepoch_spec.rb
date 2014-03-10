require 'spec_helper'

describe Tepoch::Tepoch do
  it 'should conver a unix timestamp into a time object' do
    timestamp = 1394483688
    Tepoch::Tepoch.to_time(timestamp).should eq Time.at(1394483688)
  end

  it 'handles timestamps in milliseconds as well' do
    timestamp = 1394483688000
    Tepoch::Tepoch.to_time(timestamp).should eq Time.at(1394483688)
  end
end
