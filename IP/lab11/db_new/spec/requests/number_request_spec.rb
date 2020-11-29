require 'rails_helper'

RSpec.describe "Numbers", type: :request do

  describe "GET /input" do
    it "returns http success" do
      get "/number/input"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /output" do
    it "returns http success" do
      get "/number/output"
      expect(response).to have_http_status(:success)
    end
  end

end
