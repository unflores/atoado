require 'spec_helper'

describe "list_items/index.html.haml" do
  before(:each) do
    assign(:list_items, [
      stub_model(ListItem,
        :description => "Description",
        :finished => false
      ),
      stub_model(ListItem,
        :description => "Description",
        :finished => false
      )
    ])
  end

  it "renders a list of list_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
