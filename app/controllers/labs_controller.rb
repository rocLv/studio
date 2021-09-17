class LabsController < ApplicationController
  before_action :set_lab, in: [:show]

  def show

  end

  private

  def set_lab
    @task_catalog = TaskCatalog.find(params[:id])
    @current_task = @task_catalog.tasks.first
  end
end
