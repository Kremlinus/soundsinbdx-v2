require 'rails_helper'

RSpec.describe "socials/new", type: :view do
  before(:each) do
    assign(:social, Social.new(
      :label => "MyString",
      :link => "MyString",
      :about_u => nil,
      :artist => nil,
      :event => nil
    ))
  end

  it "renders new social form" do
    render

    assert_select "form[action=?][method=?]", socials_path, "post" do

      assert_select "input[name=?]", "social[label]"

      assert_select "input[name=?]", "social[link]"

      assert_select "input[name=?]", "social[about_u_id]"

      assert_select "input[name=?]", "social[artist_id]"

      assert_select "input[name=?]", "social[event_id]"
    end
  end
end
