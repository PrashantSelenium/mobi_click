require 'rspec'
require 'appium_lib'
require 'require_all'
require 'mobi_click'

require_rel 'screens'



Before do 
  appium_txt_dir = "#{File.dirname(__FILE__)}/appium.txt"
  options = Appium.load_appium_txt(file: appium_txt_dir, verbose: true)
  @driver = Appium::Driver.new(options)
  @driver.start_driver
end

After do
  @driver.driver_quit
end


