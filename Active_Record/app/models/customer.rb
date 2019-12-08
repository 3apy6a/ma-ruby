class Customer < ActiveRecord::Base
  has_many :sups, through: :bookings
  has_many :bookings

  validates :first_name, :last_name, presence: true
  validates :desc, presence: true, length: { minimum: 10 }
  validates :telephone_number, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end

end