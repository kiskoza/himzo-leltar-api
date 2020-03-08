class CreateVetexes < ActiveRecord::Migration[5.2]
  def change
    create_table :vetexes do |t|
      t.string :name
      t.string :icon_name
      t.boolean :is_on_stock
      t.datetime :delete_time

      t.timestamps
    end
  end
end
