require 'spec_helper.rb'

describe Tepoch::Util do
  it 'converts seconds to a human readable string' do
    expect(Tepoch::Util.seconds_to_string(1)).to eq "1 second"
    expect(Tepoch::Util.seconds_to_string(60)).to eq "1 minute, 0 seconds"
    expect(Tepoch::Util.seconds_to_string(3600)).to eq "1 hour, 0 minutes, 0 seconds"
    expect(Tepoch::Util.seconds_to_string(86400)).to eq "1 day, 0 hours, 0 minutes, 0 seconds"
  end
end
