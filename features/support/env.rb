require 'rspec'
require 'appium_lib'
require 'require_all'
require 'mobi_click'
require_rel 'screens'



def desired_capabilities
  {caps:{platformName:ENV["PLATFORMNAME"],deviceName:ENV["DEVICENAME"],app:ENV["APP"] }}
end

def mobiclick_caps
tools ={
    :tool=> "AppiumL",
    'caps'=> {
        'test_on'=>'app',
        'browser'=>'none'
    }
}
 tools
end



Before do
  MobiClick::LoadPlatform.load_platform(mobiclick_caps, desired_capabilities)
  set_driver
end

def set_driver
  @driver=MobiClick.platform.start
end

def driver
  @driver
end

After do
  MobiClick::AppiumL.quit
end

