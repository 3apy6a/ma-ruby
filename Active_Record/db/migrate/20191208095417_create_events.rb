# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[5.1]
  def up
    create_table :events do |t|
      t.string :title, null: false, default: 'Event'
      t.string :photo
      t.text :description, null: false, default: 'SUP event'
      t.string :place, null: false, default: 'Cherkasy'

      t.timestamps
    end
  end

  def down
    drop_table :events
  end
end