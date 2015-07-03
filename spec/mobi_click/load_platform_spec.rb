require "spec_helper"
include MobiClick

describe MobiClick::LoadPlatform do

  let(:loadplatform){MobiClick::LoadPlatform}
  attr_accessor :tool


  before(:each) do
    # allow(adapter).to receive(:set).with(:tool,"some_tool").and_return true
     allow(loadplatform).to receive(:tool).and_return ('AppiumL')
  end

  def incorrect_tool
    allow(loadplatform).to receive(:tool).and_return ('some_tool')
  end

  context "set and get platform" do
    it "should set the platform" do
      @tool=loadplatform.tool
      expect(loadplatform.set_platform(@tool))
    end

    it "should get the platform" do
      expect(loadplatform.get_platform).to eql(MobiClick::AppiumL)
    end

    it "should register platform with capabilities" do
      expect(loadplatform.register_platform(appium_caps)).to eql appium_caps
    end

  end

  context "when empty capabilities are passed" do
    let(:incorrect_tool_msg){"We don't have implementation for the specified tool -"}
    let(:incorrect_tool_name){"incorrect_tool"}
    let(:mobiclick_message){"Mobiclick capabilities must be provided"}
    let(:caps_message){"Tool Specific capabilities must be provided"}

    it "should set the platform with incorrect tool" do
      begin
        expect(loadplatform.set_platform(incorrect_tool_name))
      rescue Exception =>e
        expect(e.message).to eql "#{incorrect_tool_msg} #{incorrect_tool_name}"
      end
    end

    it "should raise exection if load platform with empty capabilities" do
      begin
        expect(loadplatform.load_platform(mobiclick_caps_data,{}))
      rescue Exception=>e
        expect(e.message).to eql caps_message
      end
    end

    it "should raise exection if load platform with empty mobiclick capabilities" do
      begin
        expect(loadplatform.load_platform({},appium_caps))
      rescue Exception=>e
        expect(e.message).to eql mobiclick_message
      end
    end

  end

end