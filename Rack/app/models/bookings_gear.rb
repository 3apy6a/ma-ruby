# frozen_string_literal: true

class BookingsGear < ActiveRecord::Base
  belongs_to :booking, dependent: :destroy
  belongs_to :gear, dependent: :destroy
end