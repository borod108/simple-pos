require 'spec_helper'

describe "item_lines/index" do
  before(:each) do
    assign(:item_lines, [
      stub_model(ItemLine,
        :item_id => 1,
        :quantity => 2,
        :cost => 3,
        :cost_with_shipment => 4,
        :shipment_id => 5
      ),
      stub_model(ItemLine,
        :item_id => 1,
        :quantity => 2,
        :cost => 3,
        :cost_with_shipment => 4,
        :shipment_id => 5
      )
    ])
  end

  it "renders a list of item_lines" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
