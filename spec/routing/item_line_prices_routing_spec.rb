require "spec_helper"

describe ItemLinePricesController do
  describe "routing" do

    it "routes to #index" do
      get("/item_line_prices").should route_to("item_line_prices#index")
    end

    it "routes to #new" do
      get("/item_line_prices/new").should route_to("item_line_prices#new")
    end

    it "routes to #show" do
      get("/item_line_prices/1").should route_to("item_line_prices#show", :id => "1")
    end

    it "routes to #edit" do
      get("/item_line_prices/1/edit").should route_to("item_line_prices#edit", :id => "1")
    end

    it "routes to #create" do
      post("/item_line_prices").should route_to("item_line_prices#create")
    end

    it "routes to #update" do
      put("/item_line_prices/1").should route_to("item_line_prices#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/item_line_prices/1").should route_to("item_line_prices#destroy", :id => "1")
    end

  end
end
