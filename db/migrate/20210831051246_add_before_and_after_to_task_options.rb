class AddBeforeAndAfterToTaskOptions < ActiveRecord::Migration[6.0]
  def change
    add_column :task_options, :before, :string
    add_column :task_options, :after, :string
  end
end
