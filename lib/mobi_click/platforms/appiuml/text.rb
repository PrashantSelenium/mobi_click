module MobiClick
  module AppiumL
    module Text

     #clicking dynamic text
      def self.text (identifier)
        MobiClick::AppiumL::Element.element(identifier).text()
      end

    end
  end
end