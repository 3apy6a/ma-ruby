# frozen_string_literal: true

class CreateSups < ActiveRecord::Migration[5.1]
  def up
    create_table :sups do |t|
      t.string :model, null: false, default: 'SUP'
      t.string :length, null: false
      t.string :preview_url, null: false, default: ' '
      t.integer :user_quantity, null: false, default: 0
      t.text :description, null: false, default: ' '

      t.timestamps
    end
  end

  def down
    drop_table :sups
  end
end