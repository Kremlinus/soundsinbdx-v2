require 'rails_helper'

RSpec.describe "about_us/show", type: :view do
  before(:each) do
    @about_u = assign(:about_u, AboutU.create!(
      :name => "Name",
      :role => "Role",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/MyText/)
  end
end
