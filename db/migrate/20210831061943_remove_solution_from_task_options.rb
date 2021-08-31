class RemoveSolutionFromTaskOptions < ActiveRecord::Migration[6.0]
  def change
    remove_column :task_options, :solution
    remove_column :task_options, :solution_file
    remove_column :task_options, :solution_md
    remove_column :task_options, :desc
    remove_column :task_options, :subtext
    remove_column :task_options, :tests
    remove_column :task_options, :test_type
    remove_column :task_options, :before
    remove_column :task_options, :after
  end
end
