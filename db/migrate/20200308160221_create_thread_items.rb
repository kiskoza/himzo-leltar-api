class CreateThreadItems < ActiveRecord::Migration[5.2]
  def change
    create_table :thread_items do |t|
      t.integer :colour_number
      t.string :colour_name
      t.float :stock_on_hand
      t.float :stock_at_full
      t.string :color_in_hexa
      t.datetime :delete_time

      t.timestamps
    end
  end
end
