require 'rails_helper'

RSpec.describe 'LabsController', type: :routing do
  describe 'routing' do
    it 'routes to #show' do
      expect(get: "/labs/show").to route_to("labs#show")
    end
  end
end
