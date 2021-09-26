class TaskCatalogsController < ApplicationController
  before_action :set_lab, in: [:show]

  def index
    binding.pry
  end

  def show
    @console_session = RVT::ConsoleSession.create("/bin/zsh")
  end

  private

  def set_lab
    @task_catalog = TaskCatalog.find(params[:id])
    @current_task = @task_catalog.tasks.first
  end

end
