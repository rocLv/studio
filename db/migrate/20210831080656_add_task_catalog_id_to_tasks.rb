class AddTaskCatalogIdToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :task_catalog_id, :integer
  end
end
