class TasksController < ApplicationController
  before_action :set_task, only: [:show]
  def show
    @next_task = @task.task_catalog.tasks.find(@task.id + 1)
    @next_task = @next_task ? @next_task : @task
    respond_to do |format|
      format.json
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end
end
