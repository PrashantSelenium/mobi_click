require 'rspec'
require 'appium_lib'
require 'require_all'
require 'mobi_click'

require_rel 'screens'


def mobi_click_capabilities
  {agentName:"appium_lib", testOn:'app', browserName:'none' }
end

def desired_capabilities
  {caps:{platformName:ENV["PLATFORMNAME"],deviceName:ENV["DEVICENAME"],app:ENV["APP"] }}
end

def me
  MobiClick::Load_Driver
end

Before do
  me.instantiate_driver(mobi_click_capabilities, desired_capabilities)
end

After do
  me.quit
end


