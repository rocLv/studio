class AddColumnsToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :weight, :integer
    add_column :tasks, :solution, :string
    add_column :tasks, :solution_file, :string
    add_column :tasks, :solution_md, :string
    add_column :tasks, :text, :string
    add_column :tasks, :subtext, :string
    add_column :tasks, :tests, :string
    add_column :tasks, :test_type, :string
    add_column :tasks, :before, :string
    add_column :tasks, :after, :string
  end
end
