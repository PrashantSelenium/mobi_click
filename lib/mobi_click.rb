require "mobi_click/require_all"

module MobiClick
  # Your code goes here...
  include LoadPlatform




  def initialize

  end

  def self.included(cls)
    cls.extend MobiClick::Accessors
  end


  def self.platform
    LoadPlatform.get_platform
  end

end

