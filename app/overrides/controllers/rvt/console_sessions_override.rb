RVT::ConsoleSessionsController.class_eval do
  before_action :set_lab, only: [:show, :index]

  def index
    @console_session = RVT::ConsoleSession.create("/bin/bash")
  end

  private

  def set_lab
    byebug
    @task_catalog = TaskCatalog.find(2)
    @current_task = @task_catalog.tasks.first
  end
end
