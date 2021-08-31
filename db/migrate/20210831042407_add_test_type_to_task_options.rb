class AddTestTypeToTaskOptions < ActiveRecord::Migration[6.0]
  def change
    add_column :task_options, :test_type, :string
  end
end
