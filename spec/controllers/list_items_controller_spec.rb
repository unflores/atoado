require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ListItemsController do

  # This should return the minimal set of attributes required to create a valid
  # ListItem. As you add validations to ListItem, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all list_items as @list_items" do
      list_item = ListItem.create! valid_attributes
      get :index
      assigns(:list_items).should eq([list_item])
    end
  end

  describe "GET show" do
    it "assigns the requested list_item as @list_item" do
      list_item = ListItem.create! valid_attributes
      get :show, :id => list_item.id.to_s
      assigns(:list_item).should eq(list_item)
    end
  end

  describe "GET new" do
    it "assigns a new list_item as @list_item" do
      get :new
      assigns(:list_item).should be_a_new(ListItem)
    end
  end

  describe "GET edit" do
    it "assigns the requested list_item as @list_item" do
      list_item = ListItem.create! valid_attributes
      get :edit, :id => list_item.id.to_s
      assigns(:list_item).should eq(list_item)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ListItem" do
        expect {
          post :create, :list_item => valid_attributes
        }.to change(ListItem, :count).by(1)
      end

      it "assigns a newly created list_item as @list_item" do
        post :create, :list_item => valid_attributes
        assigns(:list_item).should be_a(ListItem)
        assigns(:list_item).should be_persisted
      end

      it "redirects to the created list_item" do
        post :create, :list_item => valid_attributes
        response.should redirect_to(ListItem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved list_item as @list_item" do
        # Trigger the behavior that occurs when invalid params are submitted
        ListItem.any_instance.stub(:save).and_return(false)
        post :create, :list_item => {}
        assigns(:list_item).should be_a_new(ListItem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ListItem.any_instance.stub(:save).and_return(false)
        post :create, :list_item => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested list_item" do
        list_item = ListItem.create! valid_attributes
        # Assuming there are no other list_items in the database, this
        # specifies that the ListItem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ListItem.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => list_item.id, :list_item => {'these' => 'params'}
      end

      it "assigns the requested list_item as @list_item" do
        list_item = ListItem.create! valid_attributes
        put :update, :id => list_item.id, :list_item => valid_attributes
        assigns(:list_item).should eq(list_item)
      end

      it "redirects to the list_item" do
        list_item = ListItem.create! valid_attributes
        put :update, :id => list_item.id, :list_item => valid_attributes
        response.should redirect_to(list_item)
      end
    end

    describe "with invalid params" do
      it "assigns the list_item as @list_item" do
        list_item = ListItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ListItem.any_instance.stub(:save).and_return(false)
        put :update, :id => list_item.id.to_s, :list_item => {}
        assigns(:list_item).should eq(list_item)
      end

      it "re-renders the 'edit' template" do
        list_item = ListItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ListItem.any_instance.stub(:save).and_return(false)
        put :update, :id => list_item.id.to_s, :list_item => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested list_item" do
      list_item = ListItem.create! valid_attributes
      expect {
        delete :destroy, :id => list_item.id.to_s
      }.to change(ListItem, :count).by(-1)
    end

    it "redirects to the list_items list" do
      list_item = ListItem.create! valid_attributes
      delete :destroy, :id => list_item.id.to_s
      response.should redirect_to(list_items_url)
    end
  end

end
