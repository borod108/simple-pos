require 'spec_helper'

describe "item_types/show" do
  before(:each) do
    @item_type = assign(:item_type, stub_model(ItemType,
      :name => "Name",
      :department_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
