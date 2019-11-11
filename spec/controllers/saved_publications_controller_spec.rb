require 'rails_helper'

RSpec.describe SavedPublicationsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # SavedPublication. As you add validations to SavedPublication, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SavedPublicationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      saved_publication = SavedPublication.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      saved_publication = SavedPublication.create! valid_attributes
      get :show, params: {id: saved_publication.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new SavedPublication" do
        expect {
          post :create, params: {saved_publication: valid_attributes}, session: valid_session
        }.to change(SavedPublication, :count).by(1)
      end

      it "renders a JSON response with the new saved_publication" do

        post :create, params: {saved_publication: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(saved_publication_url(SavedPublication.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new saved_publication" do

        post :create, params: {saved_publication: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested saved_publication" do
        saved_publication = SavedPublication.create! valid_attributes
        put :update, params: {id: saved_publication.to_param, saved_publication: new_attributes}, session: valid_session
        saved_publication.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the saved_publication" do
        saved_publication = SavedPublication.create! valid_attributes

        put :update, params: {id: saved_publication.to_param, saved_publication: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the saved_publication" do
        saved_publication = SavedPublication.create! valid_attributes

        put :update, params: {id: saved_publication.to_param, saved_publication: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested saved_publication" do
      saved_publication = SavedPublication.create! valid_attributes
      expect {
        delete :destroy, params: {id: saved_publication.to_param}, session: valid_session
      }.to change(SavedPublication, :count).by(-1)
    end
  end

end
