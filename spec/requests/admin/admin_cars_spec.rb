require 'rails_helper'

RSpec.describe "Cars", type: :request do
  describe "GET /admin_cars" do
    it "works! (now write some real specs)" do
      get admin_cars_path
      expect(response).to have_http_status(200)
    end
  end
end
