require "spec_helper"

describe ItemLinesController do
  describe "routing" do

    it "routes to #index" do
      get("/item_lines").should route_to("item_lines#index")
    end

    it "routes to #new" do
      get("/item_lines/new").should route_to("item_lines#new")
    end

    it "routes to #show" do
      get("/item_lines/1").should route_to("item_lines#show", :id => "1")
    end

    it "routes to #edit" do
      get("/item_lines/1/edit").should route_to("item_lines#edit", :id => "1")
    end

    it "routes to #create" do
      post("/item_lines").should route_to("item_lines#create")
    end

    it "routes to #update" do
      put("/item_lines/1").should route_to("item_lines#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/item_lines/1").should route_to("item_lines#destroy", :id => "1")
    end

  end
end
