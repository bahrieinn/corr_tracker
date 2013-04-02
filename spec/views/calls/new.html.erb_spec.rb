require 'spec_helper'

describe "calls/new" do
  before(:each) do
    assign(:call, stub_model(Call,
      :message => "MyString",
      :contact_id => 1
    ).as_new_record)
  end

  it "renders new call form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => calls_path, :method => "post" do
      assert_select "input#call_message", :name => "call[message]"
      assert_select "input#call_contact_id", :name => "call[contact_id]"
    end
  end
end
