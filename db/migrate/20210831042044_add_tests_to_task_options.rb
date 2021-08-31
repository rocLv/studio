class AddTestsToTaskOptions < ActiveRecord::Migration[6.0]
  def change
    add_column :task_options, :tests, :json
  end
end
