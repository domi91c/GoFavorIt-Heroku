require 'rails_helper'

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

RSpec.describe InboxesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Inbox. As you add validations to Inbox, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # InboxesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all inboxes as @inboxes" do
      inbox = Inbox.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:inboxes)).to eq([inbox])
    end
  end

  describe "GET show" do
    it "assigns the requested inbox as @inbox" do
      inbox = Inbox.create! valid_attributes
      get :show, {:id => inbox.to_param}, valid_session
      expect(assigns(:inbox)).to eq(inbox)
    end
  end

  describe "GET new" do
    it "assigns a new inbox as @inbox" do
      get :new, {}, valid_session
      expect(assigns(:inbox)).to be_a_new(Inbox)
    end
  end

  describe "GET edit" do
    it "assigns the requested inbox as @inbox" do
      inbox = Inbox.create! valid_attributes
      get :edit, {:id => inbox.to_param}, valid_session
      expect(assigns(:inbox)).to eq(inbox)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Inbox" do
        expect {
          post :create, {:inbox => valid_attributes}, valid_session
        }.to change(Inbox, :count).by(1)
      end

      it "assigns a newly created inbox as @inbox" do
        post :create, {:inbox => valid_attributes}, valid_session
        expect(assigns(:inbox)).to be_a(Inbox)
        expect(assigns(:inbox)).to be_persisted
      end

      it "redirects to the created inbox" do
        post :create, {:inbox => valid_attributes}, valid_session
        expect(response).to redirect_to(Inbox.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved inbox as @inbox" do
        post :create, {:inbox => invalid_attributes}, valid_session
        expect(assigns(:inbox)).to be_a_new(Inbox)
      end

      it "re-renders the 'new' template" do
        post :create, {:inbox => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested inbox" do
        inbox = Inbox.create! valid_attributes
        put :update, {:id => inbox.to_param, :inbox => new_attributes}, valid_session
        inbox.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested inbox as @inbox" do
        inbox = Inbox.create! valid_attributes
        put :update, {:id => inbox.to_param, :inbox => valid_attributes}, valid_session
        expect(assigns(:inbox)).to eq(inbox)
      end

      it "redirects to the inbox" do
        inbox = Inbox.create! valid_attributes
        put :update, {:id => inbox.to_param, :inbox => valid_attributes}, valid_session
        expect(response).to redirect_to(inbox)
      end
    end

    describe "with invalid params" do
      it "assigns the inbox as @inbox" do
        inbox = Inbox.create! valid_attributes
        put :update, {:id => inbox.to_param, :inbox => invalid_attributes}, valid_session
        expect(assigns(:inbox)).to eq(inbox)
      end

      it "re-renders the 'edit' template" do
        inbox = Inbox.create! valid_attributes
        put :update, {:id => inbox.to_param, :inbox => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested inbox" do
      inbox = Inbox.create! valid_attributes
      expect {
        delete :destroy, {:id => inbox.to_param}, valid_session
      }.to change(Inbox, :count).by(-1)
    end

    it "redirects to the inboxes list" do
      inbox = Inbox.create! valid_attributes
      delete :destroy, {:id => inbox.to_param}, valid_session
      expect(response).to redirect_to(inboxes_url)
    end
  end

end
