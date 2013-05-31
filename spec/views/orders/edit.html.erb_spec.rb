require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :sales_person_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", order_path(@order), "post" do
      assert_select "input#order_sales_person_id[name=?]", "order[sales_person_id]"
      assert_select "input#order_user_id[name=?]", "order[user_id]"
    end
  end
end
