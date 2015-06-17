require "spec_helper"
include MobiClick

describe MobiClick::Capabilities do

  def appiuml_mobi_caps_mock
    capab=double('capa')
    allow(capab).to receive(:tool){'dummy_tool'}
    allow(capab).to receive(:test_on) {'dummy_test_on'}
    allow(capab).to receive(:browser) {'dummy_browser'}
    allow(capab).to receive(:os) {'dummy_os'}
    capab
  end

def mobiclick_cap_data
  return {:tool=>'dummy_tools','caps'=>{"test_on"=>'dummy_teston',"browser"=>'dummy_browser',"os"=>'dummy_os'}}
end

let(:mobi_capa) {MobiClick::Capabilities.new(mobiclick_cap_data)}

  it "tool should return dummy_tools" do
    expect(mobi_capa.tool).to eql("dummy_tools")
  end

  it "test_on should return dummy_teston" do
    expect(mobi_capa.test_on).to eql("dummy_teston")
  end

  it "test_on should return dummy_browser" do
    expect(mobi_capa.browser).to eql("dummy_browser")
  end

  it "test_on should return dummy_os" do
    expect(mobi_capa.os).to eql("dummy_os")
  end

end

