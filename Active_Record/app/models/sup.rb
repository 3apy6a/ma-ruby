class Sup < ActiveRecord::Base
  has_many :customers, through: :bookings
  has_many :bookings


  def full_model
    "SUP #{model} #{user_quantity}"
  end

end
