require "spec_helper"
include MobiClick

describe MobiClick::Adapter do
  let(:adapter){MobiClick::Adapter}

  before(:each) do
   # allow(adapter).to receive(:set).with(:tool,"some_tool").and_return true
   # allow(adapter).to receive(:get).and_return ({:tool=>'some_tool'})
  end

context "Testing Adapters" do
       it "tool adapter is set it should return true" do
          expect(adapter.set(:tool,"some_tool")).to be_truthy
       end

      it "tool adapter get shoul return blah" do
        expect(adapter.get).to include(:tool=>'some_tool')
      end
  end
end


