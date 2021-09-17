require 'rails_helper'

RSpec.describe "Labs", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/labs/show"
      expect(response).to have_http_status(:success)
    end
  end

end
