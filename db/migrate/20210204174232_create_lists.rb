# frozen_string_literal: true

class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :name, null: false
      t.boolean :completed, null: false, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
