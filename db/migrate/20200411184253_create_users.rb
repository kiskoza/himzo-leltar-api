# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :authsch_id
      t.string :name
      t.string :status
      t.string :token

      t.index :authsch_id, unique: true
      t.index :token, unique: true

      t.timestamp
    end
  end
end
