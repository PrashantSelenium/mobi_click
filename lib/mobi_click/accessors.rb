module MobiClick
  module Accessors



    def text(name,identifier={:index => 0})

      common_methods(name,identifier)

      define_method("#{name}_text") do
        MobiClick.platform::Text.text identifier
      end


    end


    def common_methods(name,identifier)

      define_method("#{name}") do
        MobiClick.platform::Common.send('click', identifier)
      end

      define_method("#{name}?") do
        MobiClick.platform::Common.send('exists?', identifier)
      end

    end


  end
end