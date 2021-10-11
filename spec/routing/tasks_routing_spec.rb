require 'rails_helper'

RSpec.describe 'TasksController', type: :routing do
  describe 'routing' do
    it 'routes to #show' do
      expect(get: "/tasks/show").to route_to("tasks#show")
    end
  end
end
