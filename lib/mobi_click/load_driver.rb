module MobiClick
  module Load_Driver

    def self.instantiate_driver(mc_caps,caps)
     Driver.new.initialize_driver(mc_caps,caps)
      start
    end

    def self.quit
      $driver.driver_quit

    end

  private

    def self.start
      $driver.start_driver
    end

  end

  class Driver
    def initialize_driver(mc_caps,caps)
      puts  mc_caps[:agentName]
      return $driver= Appium::Driver.new(caps) if mc_caps[:agentName].eql? 'appium_lib'
      agent_exception(mc_caps[:agentName])
    end

    private
    def agent_exception(agentname)
      raise "#{agentname} Agent is not implemented. Please use only appium_lib."
    end
  end

end

#TODO
#separate the class file
#create adapters to access the agents
