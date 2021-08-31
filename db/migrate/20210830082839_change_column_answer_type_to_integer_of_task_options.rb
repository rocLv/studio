class ChangeColumnAnswerTypeToIntegerOfTaskOptions < ActiveRecord::Migration[6.0]
  def change
    remove_column :task_options, :answer
    add_column :task_options, :answer, :integer, default: 0
  end
end
