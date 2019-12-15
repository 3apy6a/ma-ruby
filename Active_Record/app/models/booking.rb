# frozen_string_literal: true

class Booking < ActiveRecord::Base
  belongs_to :customer
  belongs_to :sup
  has_and_belongs_to_many :gears

  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date

  def booked_date_range
    { from: :start_date, to: :end_date }
  end

  private

  def end_date_after_start_date
    errors.add(:end_date, 'must be after the start date') unless end_date < start_date
  end
end