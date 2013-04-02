require 'spec_helper'

describe "calls/edit" do
  before(:each) do
    @call = assign(:call, stub_model(Call,
      :message => "MyString",
      :contact_id => 1
    ))
  end

  it "renders the edit call form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => calls_path(@call), :method => "post" do
      assert_select "input#call_message", :name => "call[message]"
      assert_select "input#call_contact_id", :name => "call[contact_id]"
    end
  end
end
