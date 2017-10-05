require 'rails_helper'

RSpec.describe "socials/index", type: :view do
  before(:each) do
    assign(:socials, [
      Social.create!(
        :label => "Label",
        :link => "Link",
        :about_u => nil,
        :artist => nil,
        :event => nil
      ),
      Social.create!(
        :label => "Label",
        :link => "Link",
        :about_u => nil,
        :artist => nil,
        :event => nil
      )
    ])
  end

  it "renders a list of socials" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
