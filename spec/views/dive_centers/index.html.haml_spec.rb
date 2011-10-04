require 'spec_helper'

describe "dive_centers/index.html.haml" do
  before(:each) do
    assign(:dive_centers, [
      stub_model(DiveCenter,
        :name => "",
        :url => "",
        :email => ""
      ),
      stub_model(DiveCenter,
        :name => "",
        :url => "",
        :email => ""
      )
    ])
  end

  it "renders a list of dive_centers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
