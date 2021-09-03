class CreateSubCurriculums < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_curriculums do |t|
      t.string :title
      t.integer :duration
      t.references :curriculum, null: false, foreign_key: true

      t.timestamps
    end
  end
end
