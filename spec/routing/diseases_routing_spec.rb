require "rails_helper"

RSpec.describe DiseasesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/diseases").to route_to("diseases#index")
    end

    it "routes to #new" do
      expect(get: "/diseases/new").to route_to("diseases#new")
    end

    it "routes to #show" do
      expect(get: "/diseases/1").to route_to("diseases#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/diseases/1/edit").to route_to("diseases#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/diseases").to route_to("diseases#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/diseases/1").to route_to("diseases#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/diseases/1").to route_to("diseases#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/diseases/1").to route_to("diseases#destroy", id: "1")
    end
  end
end
