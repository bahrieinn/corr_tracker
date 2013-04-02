require 'spec_helper'

describe "calls/show" do
  before(:each) do
    @call = assign(:call, stub_model(Call,
      :message => "Message",
      :contact_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Message/)
    rendered.should match(/1/)
  end
end
