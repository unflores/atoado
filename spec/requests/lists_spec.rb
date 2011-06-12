require 'spec_helper'

describe "Lists" do
  describe "GET /lists/:id" do
    def valid_attributes
      {}
    end
    
    before(:each) do
      @list = List.create valid_attributes
      @list_item = @list.list_items.create!( :description => "list item")
    end
    
    it "displays list_items associated to the current list" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get list_path(:id => @list.id)
      response.status.should be(200)
      p response.body
      assert_select "ul" do
        assert_select "li", :text => @list_item.description
      end
      
    end
  end
end