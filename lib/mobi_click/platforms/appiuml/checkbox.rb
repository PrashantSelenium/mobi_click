module MobiClick
  module AppiumL
    module Checkbox

      def self.checked?(identifier)
        MobiClick::AppiumL::Element.element(identifier).attribute('checked')
      end

    end
  end
end