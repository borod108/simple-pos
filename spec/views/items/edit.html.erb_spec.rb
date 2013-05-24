require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :name => "MyString",
      :item_type_id => 1,
      :weight => 1.5
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_path(@item), "post" do
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "input#item_item_type_id[name=?]", "item[item_type_id]"
      assert_select "input#item_weight[name=?]", "item[weight]"
    end
  end
end
