require 'rails_helper'

RSpec.describe "artists/new", type: :view do
  before(:each) do
    assign(:artist, Artist.new(
      :name => "MyString",
      :baseline => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new artist form" do
    render

    assert_select "form[action=?][method=?]", artists_path, "post" do

      assert_select "input[name=?]", "artist[name]"

      assert_select "input[name=?]", "artist[baseline]"

      assert_select "textarea[name=?]", "artist[description]"
    end
  end
end
