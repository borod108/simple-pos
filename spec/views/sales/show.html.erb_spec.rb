require 'spec_helper'

describe "sales/show" do
  before(:each) do
    @sale = assign(:sale, stub_model(Sale,
      :user_id => 1,
      :sales_person_id => 2,
      :client => "Client",
      :price => 3,
      :recived => 4,
      :sale_line_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Client/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
