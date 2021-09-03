class CreateTestSessions < ActiveRecord::Migration[6.0]
  enable_extension 'hstore' unless extension_enabled?('hstore')
  def change
    create_table :test_sessions do |t|
      t.integer :user_id
      t.integer :task_catalog_id
      t.integer :status
      t.hstore :answer_status

      t.timestamps
    end
  end
end
