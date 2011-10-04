require "spec_helper"

describe DiveCentersController do
  describe "routing" do

    it "routes to #index" do
      get("/dive_centers").should route_to("dive_centers#index")
    end

    it "routes to #new" do
      get("/dive_centers/new").should route_to("dive_centers#new")
    end

    it "routes to #show" do
      get("/dive_centers/1").should route_to("dive_centers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dive_centers/1/edit").should route_to("dive_centers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dive_centers").should route_to("dive_centers#create")
    end

    it "routes to #update" do
      put("/dive_centers/1").should route_to("dive_centers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dive_centers/1").should route_to("dive_centers#destroy", :id => "1")
    end

  end
end
