require 'rails_helper'

RSpec.describe "AboutUs", type: :request do
  describe "GET /about_us" do
    it "works! (now write some real specs)" do
      get about_us_path
      expect(response).to have_http_status(200)
    end
  end
end
