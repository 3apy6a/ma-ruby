# frozen_string_literal: true

class Event<ActiveRecord::Base
  has_many :bookings

  validates :title, presence: true
end