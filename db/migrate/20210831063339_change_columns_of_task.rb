class ChangeColumnsOfTask < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :before
    add_column :tasks, :before, :string, array: true, default:[]

    remove_column :tasks, :tests
    add_column :tasks, :tests, :string, array: true, default: []
  end
end
