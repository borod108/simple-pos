require 'spec_helper'

describe "sales/index" do
  before(:each) do
    assign(:sales, [
      stub_model(Sale,
        :user_id => 1,
        :sales_person_id => 2,
        :client => "Client",
        :price => 3,
        :recived => 4,
        :sale_line_id => 5
      ),
      stub_model(Sale,
        :user_id => 1,
        :sales_person_id => 2,
        :client => "Client",
        :price => 3,
        :recived => 4,
        :sale_line_id => 5
      )
    ])
  end

  it "renders a list of sales" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
