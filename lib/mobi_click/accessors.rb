module MobiClick
  module Accessors



    def text(name,identifier={:index => 0})

      common_methods(name,identifier)

      define_method("#{name}_text") do
        MobiClick.platform::Text.text identifier
      end


    end

    def text_field(name,identifier={:index => 0})
      common_methods(name,identifier)

      define_method("#{name}_text") do
        MobiClick.platform::TextField.text identifier
      end

      define_method("#{name}=") do |text|
        MobiClick.platform::TextField.set_text(identifier,text)
      end

      define_method("#{name}_clear") do
        MobiClick.platform::TextField.clear
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