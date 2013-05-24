require 'spec_helper'

describe "item_line_prices/edit" do
  before(:each) do
    @item_line_price = assign(:item_line_price, stub_model(ItemLinePrice,
      :item_line_id => 1,
      :recommended_price => 1
    ))
  end

  it "renders the edit item_line_price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_line_price_path(@item_line_price), "post" do
      assert_select "input#item_line_price_item_line_id[name=?]", "item_line_price[item_line_id]"
      assert_select "input#item_line_price_recommended_price[name=?]", "item_line_price[recommended_price]"
    end
  end
end
