module MobiClick
  module Accessors


    def text(name)

      define_method("#{name}") do
        puts "Actual : #{MobiClick.platform.driver.find_element(:name,'UICatalog').text()} -- Expected : 'UICatalog'"
      end

      define_method("#{name}?") do
        puts 'test name?'
      end

    end

  end
end