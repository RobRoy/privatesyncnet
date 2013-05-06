require 'spec_helper'

describe "share_items/index" do
  before(:each) do
    assign(:share_items, [
      stub_model(ShareItem,
        :name => "Name",
        :description => "MyText",
        :key => "Key"
      ),
      stub_model(ShareItem,
        :name => "Name",
        :description => "MyText",
        :key => "Key"
      )
    ])
  end

  it "renders a list of share_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Key".to_s, :count => 2
  end
end
