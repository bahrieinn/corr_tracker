require 'spec_helper'

describe "calls/index" do
  before(:each) do
    assign(:calls, [
      stub_model(Call,
        :message => "Message",
        :contact_id => 1
      ),
      stub_model(Call,
        :message => "Message",
        :contact_id => 1
      )
    ])
  end

  it "renders a list of calls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Message".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
