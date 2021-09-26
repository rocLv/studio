require 'rails_helper'

RSpec.describe 'TaskCatalogsController', type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: "/task_catalogs/index").to route_to("task_catalogs#index")
    end
  end
end
