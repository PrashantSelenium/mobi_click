

module MobiClick
  module Adapter
    @@tools ||={}


=begin
    def self.set_tool(tool)
    @a="Appium"

    end

    def self.get_tool
      puts Object.const_get("MobiClick::#{@a}")
      Object.const_get("MobiClick::#{@a}")
      end

=end

    def self.get
      @@tools
    end

    def self.set(key,value)
      @@tools[key]=value
    end

  end
end

require "mobi_click/platforms/appiuml"
