class CreateCurriculums < ActiveRecord::Migration[6.0]
  def change
    create_table :curriculums do |t|
      t.string :title
      t.string :phase
      t.integer :cource_id

      t.timestamps
    end
  end
end
