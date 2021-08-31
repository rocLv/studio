class LabsController < ApplicationController
  def index
    @task_catalog = TaskCatalog.first
    @current_task = @task_catalog.tasks.second
  end
end
