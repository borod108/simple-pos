require 'spec_helper'

describe "shipments/edit" do
  before(:each) do
    @shipment = assign(:shipment, stub_model(Shipment,
      :cost => 1
    ))
  end

  it "renders the edit shipment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shipment_path(@shipment), "post" do
      assert_select "input#shipment_cost[name=?]", "shipment[cost]"
    end
  end
end
