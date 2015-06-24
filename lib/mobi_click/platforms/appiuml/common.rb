module MobiClick
  module AppiumL
    module Common

      def self.tap (identifier)
       MobiClick::AppiumL::Element.element(identifier).click
      end

      def self.exists? (identifier)
        MobiClick::AppiumL::Element.element(identifier).displayed?
      end

      def self._element(identifier)
        MobiClick::AppiumL::Element.element(identifier)
      end
    end
  end
end