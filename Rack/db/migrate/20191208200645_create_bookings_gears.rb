# frozen_string_literal: true

class CreateBookingsGears < ActiveRecord::Migration[5.1]
  def up
    create_table :bookings_gears, id: false do |t|
      t.belongs_to :booking, foreign_key: true
      t.belongs_to :gear, foreign_key: true

      t.timestamps
    end
  end
end