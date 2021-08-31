class CreateTaskCatalogs < ActiveRecord::Migration[6.0]
  def change
    create_table :task_catalogs do |t|
      t.string :name
      t.integer :count

      t.timestamps
    end
  end
end
