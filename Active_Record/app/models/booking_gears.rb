class BookingGear < ActiveRecord::Base
  belongs_to :booking
  belongs_to :gear

end