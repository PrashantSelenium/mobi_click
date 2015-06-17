require "spec_helper"
include MobiClick

describe Adapter do

  let(:tool_adapter){MobiClick::Adapter}
        it "tool adapter is set it should return the set value" do
          tool_adapter.set(:tool,"some_tool")
          expect(tool_adapter.get.fetch(:tool)).to eql("some_tool")
        end
end


