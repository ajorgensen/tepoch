require 'spec_helper'

describe Tepoch::Interface do

  #it 'takes a conversion command and does something' do
  #  #tepoch 123456789 => Date
  #  #tepoch a - b => ..

  #  Tepoch::Interface.parse_command(args)
  #end

  it 'support arithmetic operations' do
    args = ["123", "-", "456"]
    Tepoch::Interface.new(args).arithmetic?.should be true
  end

  it 'supports clock operation' do
    Tepoch::Interface.new(["clock"]).clock?.should be true
  end

  it 'defaults to processing all args passed in' do
    t1 = Time.now.utc
    times = [t1, t1 + 1, t1 + 2]
    args = times.collect { |time| time.to_i }

    Tepoch::Interface.perform(args).map(&:to_i).should eq times.map(&:to_i)
  end

  it 'performs arithmetic operations' do
    t1 = Time.now.to_i
    t2 = t1 + 1
    args = [t2, "-", t1]

    Tepoch::Interface.perform(args).should eq "1 second"
  end

  it 'performs clock' do
    timestamp = Time.now.to_i
    args = %w(clock)
    Tepoch::Interface.perform(args).should eq Tepoch::Clock.format_time(timestamp)
  end

end
