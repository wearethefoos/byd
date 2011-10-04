require 'spec_helper'

describe "dive_centers/edit.html.haml" do
  before(:each) do
    @dive_center = assign(:dive_center, stub_model(DiveCenter,
      :name => "",
      :url => "",
      :email => ""
    ))
  end

  it "renders the edit dive_center form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dive_centers_path(@dive_center), :method => "post" do
      assert_select "input#dive_center_name", :name => "dive_center[name]"
      assert_select "input#dive_center_url", :name => "dive_center[url]"
      assert_select "input#dive_center_email", :name => "dive_center[email]"
    end
  end
end
