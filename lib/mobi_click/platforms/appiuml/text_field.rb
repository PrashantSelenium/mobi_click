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

      def self.set_text(identifier,text)
        MobiClick::AppiumL::Element.element(identifier).send_keys(text)
      end

      def self.clear
        MobiClick::AppiumL::Element.element(identifier).clear
      end

    end
  end
end