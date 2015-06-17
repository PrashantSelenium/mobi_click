module MobiClick
  module AppiumL
    module Element
      include AppiumL
      attr_accessor :identifier

      def self.driver
       driver
      end

      def self.element (identifier)
        MobiClick::AppiumL.driver.find_element(parse_identifier(identifier))
      end

      def self.parse_identifier (hash)
        hash.each { |key, value| ":#{key.to_sym},'#{value}'" }
      end

      def self.element_identfiers
       identifiers= [
            :name,
            :id,
            :xpath
        ]
        identifiers
      end

    end
#    include Element
  end
end