module MobiClick
  module AppiumL
    module Element

      attr_accessor :identifier
      def self.driver
        MobiClick::AppiumL.driver
      end

      def self.element (identifier)
        MobiClick.platform.driver.find_element(parse_identifier(identifier))
      end

      def self.parse_identifier (hash)
        hash.each { |key, value| ":#{key.to_sym},'#{value}'" }
      end

      def self.text (identifier)
        element(identifier).text()
      end
    end
  end
end