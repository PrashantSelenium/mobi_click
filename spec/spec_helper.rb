require 'rspec'

require 'mobi_click'

def appium_caps
  {caps:{platformName:ENV["PLATFORMNAME"],deviceName:ENV["DEVICENAME"],app:ENV["APP"] }}
end

def mobiclick_caps_data
  {:tool=> "AppiumL",
      'caps'=> {
          'test_on'=>'app',
          'browser'=>'none',
          'os'=>'ios'
      }
  }

end