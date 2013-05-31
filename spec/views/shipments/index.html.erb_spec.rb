require 'spec_helper'

describe "shipments/index" do
  before(:each) do
    assign(:shipments, [
      stub_model(Shipment,
        :cost => 1
      ),
      stub_model(Shipment,
        :cost => 1
      )
    ])
  end

  it "renders a list of shipments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
