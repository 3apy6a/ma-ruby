# frozen_string_literal: true

class CreateGears < ActiveRecord::Migration[5.1]
  def up
    create_table :gears do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def down
    drop_table :gears
  end
end