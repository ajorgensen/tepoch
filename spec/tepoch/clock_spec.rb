require 'spec_helper'

describe Tepoch::Clock do
 it 'doo' do
   loop do
     Tepoch::Clock.new.tick
     sleep(1)
   end
 end
end
