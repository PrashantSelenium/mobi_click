module MobiClick
  module AppiumL
    module Generic

      def self.scroll_to(opts)
        direction=opts.fetch(:direction)
        #identifier=opts.select{|k,v| hash.delete(k) || true if k==(:name)}
        identifier=opts.keep_if {|key,value| [:name].include?(key)}

        MobiClick::AppiumL.driver.execute_script "mobile: scroll", :direction => direction, \
         :element => MobiClick::AppiumL::Element.element(identifier).ref
      end

      def self.swipe(opts)
        MobiClick::AppiumL.driver.swipe(:start_x=>163.9, :start_y=>168.5, :end_x=>294, :end_y=>168.5, :duration=>1)
      end

    end
  end
end

