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


  def self.scrollto
    ele=platform.driver.find_element(:name,'Steppers')
    platform.driver.execute_script "mobile: scroll", :direction => 'down', :element => ele.ref

  end

end

