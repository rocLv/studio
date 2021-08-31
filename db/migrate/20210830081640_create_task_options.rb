class CreateTaskOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :task_options do |t|
      t.integer :task_id
      t.string :desc
      t.boolean :answer

      t.timestamps
    end
  end
end
