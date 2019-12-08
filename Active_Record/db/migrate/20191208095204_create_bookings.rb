class CreateBookings < ActiveRecord::Migration[5.1]
  
  def up
    create_table :bookings do |t|
      t.references :sup, foreign_key: true
      t.references :customer, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
  
  def down
    drop_table :bookings
  end
end
