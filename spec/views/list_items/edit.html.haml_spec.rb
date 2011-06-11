require 'spec_helper'

describe "list_items/edit.html.haml" do
  before(:each) do
    @list_item = assign(:list_item, stub_model(ListItem,
      :description => "MyString",
      :finished => false
    ))
  end

  it "renders the edit list_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => list_items_path(@list_item), :method => "post" do
      assert_select "input#list_item_description", :name => "list_item[description]"
      assert_select "input#list_item_finished", :name => "list_item[finished]"
    end
  end
end
