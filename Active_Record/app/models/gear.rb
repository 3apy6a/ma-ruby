class Gear < ActiveRecord::Base
  has_many :booking_gears, dependent: :destroy
  has_many :bookings, through: :booking_gear

end