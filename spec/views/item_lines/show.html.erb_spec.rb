require 'spec_helper'

describe "item_lines/show" do
  before(:each) do
    @item_line = assign(:item_line, stub_model(ItemLine,
      :item_id => 1,
      :quantity => 2,
      :cost => 3,
      :cost_with_shipment => 4,
      :shipment_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
