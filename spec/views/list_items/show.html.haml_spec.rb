require 'spec_helper'

describe "list_items/show.html.haml" do
  before(:each) do
    @list_item = assign(:list_item, stub_model(ListItem,
      :description => "Description",
      :finished => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
