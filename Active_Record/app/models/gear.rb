# frozen_string_literal: true

class Gear < ActiveRecord::Base
  has_and_belongs_to_many :bookings
end