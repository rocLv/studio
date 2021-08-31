class AddContentToTaskOptions < ActiveRecord::Migration[6.0]
  def change
    add_column :task_options, :content, :string
  end
end
