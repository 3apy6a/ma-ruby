# frozen_string_literal: true

class Customer < ActiveRecord::Base
  has_many :bookings
  has_many :sups, through: :bookings

  before_validation :normalize_name, on: :create

  validates :first_name, :last_name, :telephone_number, presence: true
  validates :description, presence: true, length: {minimum: 10 }
  validates :telephone_number, uniqueness: true
  validates :telephone_number, numericality: true

  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def normalize_name
    self.name = name.downcase.titleize
  end
end