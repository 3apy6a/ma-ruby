# frozen_string_literal: true

class Sup < ActiveRecord::Base
  has_many :bookings
  has_many :customers, through: :bookings

  validates :model, :user_quantity, :description, presence: true

  def full_model
    "SUP #{model} #{user_quantity}"
  end
end
