require 'rails_helper'

RSpec.describe "TaskCatalogs", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/task_catalogs/index"
      expect(response).to have_http_status(:success)
    end
  end

end
