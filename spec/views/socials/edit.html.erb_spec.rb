require 'rails_helper'

RSpec.describe "socials/edit", type: :view do
  before(:each) do
    @social = assign(:social, Social.create!(
      :label => "MyString",
      :link => "MyString",
      :about_u => nil,
      :artist => nil,
      :event => nil
    ))
  end

  it "renders the edit social form" do
    render

    assert_select "form[action=?][method=?]", social_path(@social), "post" do

      assert_select "input[name=?]", "social[label]"

      assert_select "input[name=?]", "social[link]"

      assert_select "input[name=?]", "social[about_u_id]"

      assert_select "input[name=?]", "social[artist_id]"

      assert_select "input[name=?]", "social[event_id]"
    end
  end
end
