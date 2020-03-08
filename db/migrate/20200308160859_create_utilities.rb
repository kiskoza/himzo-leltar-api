class CreateUtilities < ActiveRecord::Migration[5.2]
  def change
    create_table :utilities do |t|
      t.string :name
      t.string :icon_name
      t.integer :stock_on_hand
      t.integer :stock_at_full
      t.datetime :delete_time

      t.timestamps
    end
  end
end
