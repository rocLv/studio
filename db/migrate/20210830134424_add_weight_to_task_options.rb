class AddWeightToTaskOptions < ActiveRecord::Migration[6.0]
  def change
    add_column :task_options, :weight, :integer
    add_column :task_options, :solution_file, :string
    add_column :task_options, :solution_md, :string
  end
end
