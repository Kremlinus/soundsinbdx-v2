require 'rails_helper'

RSpec.describe "about_us/edit", type: :view do
  before(:each) do
    @about_u = assign(:about_u, AboutU.create!(
      :name => "MyString",
      :role => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit about_u form" do
    render

    assert_select "form[action=?][method=?]", about_u_path(@about_u), "post" do

      assert_select "input[name=?]", "about_u[name]"

      assert_select "input[name=?]", "about_u[role]"

      assert_select "textarea[name=?]", "about_u[description]"
    end
  end
end
