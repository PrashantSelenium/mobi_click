module MobiClick
  class Capabilities

    attr_accessor :mobi_caps

    def initialize(mobi_caps={})
      @mobi_caps=mobi_caps
    end

    def tool
      @mobi_caps.fetch(:tool)
    end

    def test_on
      @mobi_caps.fetch('caps').fetch('test_on')
    end

    def browser
      @mobi_caps.fetch('caps').fetch('browser')
    end

    def os
      @mobi_caps.fetch('caps').fetch('os')
    end

  end
end




