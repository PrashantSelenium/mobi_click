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

  def self.start
    platform.start
  end

  def self.quit
    platform.quit
  end

end

