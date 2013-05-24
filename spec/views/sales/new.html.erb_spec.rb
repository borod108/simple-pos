require 'spec_helper'

describe "sales/new" do
  before(:each) do
    assign(:sale, stub_model(Sale,
      :user_id => 1,
      :sales_person_id => 1,
      :client => "MyString",
      :price => 1,
      :recived => 1,
      :sale_line_id => 1
    ).as_new_record)
  end

  it "renders new sale form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sales_path, "post" do
      assert_select "input#sale_user_id[name=?]", "sale[user_id]"
      assert_select "input#sale_sales_person_id[name=?]", "sale[sales_person_id]"
      assert_select "input#sale_client[name=?]", "sale[client]"
      assert_select "input#sale_price[name=?]", "sale[price]"
      assert_select "input#sale_recived[name=?]", "sale[recived]"
      assert_select "input#sale_sale_line_id[name=?]", "sale[sale_line_id]"
    end
  end
end
