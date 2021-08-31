class AddSubtextToTaskOptions < ActiveRecord::Migration[6.0]
  def change
    add_column :task_options, :subtext, :string
  end
end
