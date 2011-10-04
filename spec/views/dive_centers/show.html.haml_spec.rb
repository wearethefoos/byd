require 'spec_helper'

describe "dive_centers/show.html.haml" do
  before(:each) do
    @dive_center = assign(:dive_center, stub_model(DiveCenter,
      :name => "",
      :url => "",
      :email => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
