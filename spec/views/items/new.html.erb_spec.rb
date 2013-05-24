require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :name => "MyString",
      :item_type_id => 1,
      :weight => 1.5
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", items_path, "post" do
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "input#item_item_type_id[name=?]", "item[item_type_id]"
      assert_select "input#item_weight[name=?]", "item[weight]"
    end
  end
end
