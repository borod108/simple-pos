require 'spec_helper'

describe "item_line_prices/show" do
  before(:each) do
    @item_line_price = assign(:item_line_price, stub_model(ItemLinePrice,
      :item_line_id => 1,
      :recommended_price => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
