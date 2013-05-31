require 'spec_helper'

describe "shipments/show" do
  before(:each) do
    @shipment = assign(:shipment, stub_model(Shipment,
      :cost => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
