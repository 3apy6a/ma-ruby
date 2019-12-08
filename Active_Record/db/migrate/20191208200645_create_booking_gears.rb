class CreateBookingGears < ActiveRecord::Migration[5.1]
  
  def up
    create_table :booking_gears do |t|
      t.references :booking, foreign_key: true
      t.references :gear, foreign_key: true

      t.timestamps
    end
  end
  
end
