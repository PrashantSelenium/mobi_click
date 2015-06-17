module MobiClick
  module AppiumL
    module Common

      def self.click (identifier)
       MobiClick::AppiumL::Element.element(identifier).click
      end

      def self.exists? (identifier)
        MobiClick::AppiumL::Element.element(identifier).displayed?
      end
    end
  end
end