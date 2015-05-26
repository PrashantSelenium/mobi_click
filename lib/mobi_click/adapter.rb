module MobiClick
  module Adapter
    @@tools ||={}

    def self.get
      @@tools
    end

    def self.set(key,value)
      @@tools[key]=value
    end

  end
end

