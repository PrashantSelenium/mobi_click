module MobiClick
  #
  # Contains the class level methods that are inserted into your screen objects
  # when you include the MobiClick module.  These methods will generate another
  # set of methods that provide access to the elements on the screens.
  #
  # @see MobiClick::AppiumL for the Appium_lib implementation of the platform delegate
  #
  module Accessors
    #
    # adds three methods to the MobiClick
    # 1. click the text
    # 2. check the existense of the text element
    # 3. retrieve the text from the text element
    # @example
    #   text(:first_name, :id => "first_name")
    #   # will generate 'first_name', 'first_name?', 'first_name_text' methods

    def text(name,identifier={:index => 0})
      common_methods(name,identifier)
      define_method("#{name}_text") do
        MobiClick.platform::Text.text identifier
      end
    end

    #
    # adds four methods to the MobiClick -
    # 1. set the text in the text field
    # 2. verify the existense of the text field element
    # 3. retrieve the text from the text element
    # 4. clear the text field
    # 5. click the text field
    # @example
    #   text_field(:user_name, :id => "user_name")
    #   # will generate 'user_name=', 'user_name?', 'user_name_text', 'user_name_clear', 'user_name' methods

    def text_field(name,identifier={:index => 0})
      common_methods(name,identifier)
      define_method("#{name}_text") do
        MobiClick.platform::TextField.text identifier
      end
      define_method("#{name}=") do |text|
        MobiClick.platform::TextField.set_text(identifier,text)
      end
      define_method("#{name}_clear") do
        MobiClick.platform::TextField.clear
      end
    end

    #
    # adds two methods to the MobiClick
    # 1. click the image
    # 2. check the existense of the image element
    # @example
    #   text(:profile_image, :id => "profile_img")
    #   # will generate 'profile_image', 'profile_image?' methods

    def image(name,identifier={:index => 0})
      common_methods(name,identifier)
    end

    # methods declared in common_methods are generic method call that could be used for all the api methods
    def common_methods(name,identifier)
      define_method("#{name}") do
        MobiClick.platform::Common.send('tap', identifier)
      end
      define_method("#{name}?") do
        MobiClick.platform::Common.send('exists?', identifier)
      end
      define_method("#{name}_element") do
        MobiClick.platform::Common.send('_element', identifier)
      end

    end


  end
end