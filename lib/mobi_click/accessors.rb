module MobiClick
  module Accessors

    def text(name,identifier={:index => 0})
      define_method("#{name}") do
        MobiClick.platform::Element.text identifier
      end

      define_method("#{name}?") do
      end
    end

  end
end