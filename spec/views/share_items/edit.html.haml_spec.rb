require 'spec_helper'

describe "share_items/edit" do
  before(:each) do
    @share_item = assign(:share_item, stub_model(ShareItem,
      :name => "MyString",
      :description => "MyText",
      :key => "MyString"
    ))
  end

  it "renders the edit share_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", share_item_path(@share_item), "post" do
      assert_select "input#share_item_name[name=?]", "share_item[name]"
      assert_select "textarea#share_item_description[name=?]", "share_item[description]"
      assert_select "input#share_item_key[name=?]", "share_item[key]"
    end
  end
end
