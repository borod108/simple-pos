require 'spec_helper'

describe "item_line_prices/index" do
  before(:each) do
    assign(:item_line_prices, [
      stub_model(ItemLinePrice,
        :item_line_id => 1,
        :recommended_price => 2
      ),
      stub_model(ItemLinePrice,
        :item_line_id => 1,
        :recommended_price => 2
      )
    ])
  end

  it "renders a list of item_line_prices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
