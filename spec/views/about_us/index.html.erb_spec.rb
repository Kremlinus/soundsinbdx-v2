require 'rails_helper'

RSpec.describe "about_us/index", type: :view do
  before(:each) do
    assign(:about_us, [
      AboutU.create!(
        :name => "Name",
        :role => "Role",
        :description => "MyText"
      ),
      AboutU.create!(
        :name => "Name",
        :role => "Role",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of about_us" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
