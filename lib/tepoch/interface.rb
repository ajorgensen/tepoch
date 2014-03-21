require 'tepoch'

module Tepoch
  class Interface

    VALID_ARTHIMETIC_SYMBOLS = %w(-)

    attr_reader :args
    def initialize(args)
      @args = args
    end

    def self.perform(args, options = {})
      interface = new(args)

      if interface.arithmetic?
        diff = args[0].to_i.send(args[1], args[2].to_i)
        return options[:keep_as_timestamp] ? diff : Util.seconds_to_string(diff)
      elsif interface.clock?
        return Clock.tick(options[:utc])
      else
        return args.collect { |timestamp| Tepoch.to_time(timestamp.to_i, options[:utc]) }
      end
    end

    def arithmetic?
     (@args[0] && @args[1] && @args[2] && VALID_ARTHIMETIC_SYMBOLS.include?(@args[1]))
    end

    def clock?
      (@args[0] && @args[0] == "clock")
    end
  end
end
