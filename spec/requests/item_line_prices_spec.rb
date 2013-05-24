require 'spec_helper'

describe "ItemLinePrices" do
  describe "GET /item_line_prices" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get item_line_prices_path
      response.status.should be(200)
    end
  end
end
