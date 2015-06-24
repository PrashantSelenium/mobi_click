module MobiClick
  module DynamicMethods

    @ELEMENTS =[:button,
                :text_field,
                :text,
                :checkbox,
                :table
    ]

    @ELEMENTS.each do |element|
      define_method("#{element}_element") do |name,identifier|
       MobiClick.platform::Common.send('_element', identifier)
      end
    end

  end
end