class CreateCources < ActiveRecord::Migration[6.0]
  def change
    create_table :cources do |t|
      t.string :name
      t.integer :lessons_count
      t.integer :students_count
      t.integer :period
      t.integer :price_cent
      t.integer :current_price_cent
      t.integer :coach_id
      t.string :desc

      t.timestamps
    end
  end
end
