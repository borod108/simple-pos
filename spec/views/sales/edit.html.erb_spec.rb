require 'spec_helper'

describe "sales/edit" do
  before(:each) do
    @sale = assign(:sale, stub_model(Sale,
      :user_id => 1,
      :sales_person_id => 1,
      :item_id => 1,
      :client => "MyString",
      :price => 1,
      :received => 1
    ))
  end

  it "renders the edit sale form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sale_path(@sale), "post" do
      assert_select "input#sale_user_id[name=?]", "sale[user_id]"
      assert_select "input#sale_sales_person_id[name=?]", "sale[sales_person_id]"
      assert_select "input#sale_item_id[name=?]", "sale[item_id]"
      assert_select "input#sale_client[name=?]", "sale[client]"
      assert_select "input#sale_price[name=?]", "sale[price]"
      assert_select "input#sale_received[name=?]", "sale[received]"
    end
  end
end
