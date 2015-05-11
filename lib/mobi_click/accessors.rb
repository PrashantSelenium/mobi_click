module MobiClick
  module Accessors


    def text(name)
      puts "ssssssssssss #{name}"
      #name=name.to_s
      define_method("#{name}") do
        puts "inside Accessors::text #{MobiClick.platform}"
        puts MobiClick.platform.driver
        puts "Actual : #{MobiClick.platform.driver.find_element(:name,'UICatalog').text()} -- Expected : 'UICatalog'"
        puts "inside method name"
      end
      puts 'end'

      define_method("#{name}?") do
        puts 'question'
      end

    end

  end
end