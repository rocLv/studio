class TaskCatalogsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :set_lab, only: [:show]

  def index
  end

  def show
    command = "DOCKER_HOST=ssh://root@47.242.11.169 docker exec -it 813fe542bbe1 /bin/bash"
    @console_session = if console = Redis.current.get("#{current_user.id}_rvt")
                         pid = JSON.parse(console)["slave"]["pid"]
                         uid = JSON.parse(console)["slave"]["uid"]
                         RVT::ConsoleSession.find_by_pid_and_uid(pid, uid)
                       else
                         session = RVT::ConsoleSession.create(command)
                         Redis.current.set("#{current_user.id}_rvt", session.to_json)
                         session
                       end
  end

  private

  def set_lab
    @task_catalog = TaskCatalog.find(params[:id])
    @current_task = @task_catalog.tasks.first
  end

end
