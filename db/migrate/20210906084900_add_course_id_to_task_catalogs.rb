class AddCourseIdToTaskCatalogs < ActiveRecord::Migration[6.0]
  def change
    add_column :task_catalogs, :course_id, :integer
  end
end
