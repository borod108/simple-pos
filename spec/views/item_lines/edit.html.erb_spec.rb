require 'spec_helper'

describe "item_lines/edit" do
  before(:each) do
    @item_line = assign(:item_line, stub_model(ItemLine,
      :item_id => 1,
      :quantity => 1,
      :cost => 1,
      :cost_with_shipment => 1,
      :shipment_id => 1
    ))
  end

  it "renders the edit item_line form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_line_path(@item_line), "post" do
      assert_select "input#item_line_item_id[name=?]", "item_line[item_id]"
      assert_select "input#item_line_quantity[name=?]", "item_line[quantity]"
      assert_select "input#item_line_cost[name=?]", "item_line[cost]"
      assert_select "input#item_line_cost_with_shipment[name=?]", "item_line[cost_with_shipment]"
      assert_select "input#item_line_shipment_id[name=?]", "item_line[shipment_id]"
    end
  end
end
