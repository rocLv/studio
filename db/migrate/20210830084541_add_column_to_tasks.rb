class AddColumnToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :pre_script, :string
    add_column :tasks, :after_script, :string
  end
end
