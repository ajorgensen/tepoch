require 'spec_helper.rb'

describe Tepoch::Util do
  it 'converts seconds to a human readable string' do
    Tepoch::Util.seconds_to_string(1).should eq "1 second"
    Tepoch::Util.seconds_to_string(60).should eq "1 minute, 0 seconds"
    Tepoch::Util.seconds_to_string(3600).should eq "1 hour, 0 minutes, 0 seconds"
    Tepoch::Util.seconds_to_string(86400).should eq "1 day, 0 hours, 0 minutes, 0 seconds"
  end
end
