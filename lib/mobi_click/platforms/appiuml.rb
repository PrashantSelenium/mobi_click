require 'appium_lib'

module MobiClick
  module AppiumL

    @caps ||={}
    @@driver=nil

    def self.register(caps)
      @caps=caps
    end

    def self.start
      @@driver=Driver.new.initialize_driver(@caps)
      @@driver.start_driver
    end

    def self.quit
      @@driver.driver_quit
    end

    def self.driver
      @@driver
    end

  end

  class Driver
    def initialize_driver(caps)
      puts "driver initialized"
      puts caps
      return Appium::Driver.new(caps)
    end
  end


end

# Implement interface