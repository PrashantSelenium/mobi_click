module MobiClick
  module AppiumL
    module TextField
      #set text
      #get text
      #click
      #clear

      def self.text (identifier)
        MobiClick::AppiumL::Element.element(identifier).text()
      end

    end
  end
end