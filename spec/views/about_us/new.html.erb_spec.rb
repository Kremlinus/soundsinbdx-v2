require 'rails_helper'

RSpec.describe "about_us/new", type: :view do
  before(:each) do
    assign(:about_u, AboutU.new(
      :name => "MyString",
      :role => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new about_u form" do
    render

    assert_select "form[action=?][method=?]", about_us_path, "post" do

      assert_select "input[name=?]", "about_u[name]"

      assert_select "input[name=?]", "about_u[role]"

      assert_select "textarea[name=?]", "about_u[description]"
    end
  end
end
