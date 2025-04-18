# frozen_string_literal: true

class CreateMetrics < ActiveRecord::Migration[7.1]
  def change
    create_table :metrics do |t|
      t.string :name
      t.integer :value
      t.datetime :date
      t.string :category

      t.timestamps
    end
  end
end
