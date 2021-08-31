class AddSolutionToTaskOptions < ActiveRecord::Migration[6.0]
  def change
    add_column :task_options, :solution, :string
  end
end
