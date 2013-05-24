require 'spec_helper'

describe "item_types/edit" do
  before(:each) do
    @item_type = assign(:item_type, stub_model(ItemType,
      :name => "MyString",
      :department_id => 1
    ))
  end

  it "renders the edit item_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_type_path(@item_type), "post" do
      assert_select "input#item_type_name[name=?]", "item_type[name]"
      assert_select "input#item_type_department_id[name=?]", "item_type[department_id]"
    end
  end
end
