require 'rails_helper'

RSpec.describe "socials/show", type: :view do
  before(:each) do
    @social = assign(:social, Social.create!(
      :label => "Label",
      :link => "Link",
      :about_u => nil,
      :artist => nil,
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
