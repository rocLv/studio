class AddBackgroundSrcToCources < ActiveRecord::Migration[6.0]
  def change
    add_column :cources, :background_src, :string
  end
end
