class TaskCatalogsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :set_lab, only: [:show]

  def index
  end

  def show
    command = "DOCKER_HOST=ssh://root@47.242.11.169 docker exec -it 813fe542bbe1 /bin/bash"
    @console_session = RVT::ConsoleSession.create(command)
  end

  private

  def set_lab
    @task_catalog = TaskCatalog.find(params[:id])
    @current_task = @task_catalog.tasks.first
  end

end
