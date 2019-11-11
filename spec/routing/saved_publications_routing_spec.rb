require "rails_helper"

RSpec.describe SavedPublicationsController, type: :routing do
  describe "routing" do
    it "routes to #show" do
      expect(get: "/saved_publications/1").to route_to("saved_publications#show", id: "1")
    end

    it "routes to #create" do
      expect(post: "/saved_publications").to route_to("saved_publications#create")
    end

    it "routes to #destroy" do
      expect(delete: "/saved_publications/1").to route_to("saved_publications#destroy", id: "1")
    end
  end
end
