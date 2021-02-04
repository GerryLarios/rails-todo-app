# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.string :notes, null: true
      t.boolean :completed, null: false, default: false
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
