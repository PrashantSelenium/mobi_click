require "mobi_click/platforms/appiuml"

module MobiClick
  module LoadPlatform
   @@platform=nil
   @mobiclick_message="Mobiclick capabilities must be provided"
   @caps_message="Tool Specific capabilities must be provided"

    def self.load_platform(mobiclick_caps={},caps={})
      raise @caps_message if caps.empty?
      mobiclick_caps or raise @mobiclick_message
      raise @mobiclick_message if mobiclick_caps.empty?
      caps or raise @caps_message
     # Adapter.set(:tool,Capabilities.new(mobiclick_caps).tool)
      set_adapter(:tool,mobiclick_caps)
      set_platform(self.tool)
      register_platform(caps)
    end

    def self.tool
      Adapter.get[:tool]
    end

   def self.set_adapter(tool,mobiclick_caps)
     Adapter.set(tool,Capabilities.new(mobiclick_caps).tool)
   end

    def self.set_platform (tool)
      begin
        @@platform=Object.const_get("MobiClick::#{tool}")
      rescue
         raise "We don't have implementation for the specified tool - #{tool}"
      end
    end

   def self.get_platform
     @@platform
   end

    def self.register_platform(caps)
      @@platform.register(caps)
    end

  end
end