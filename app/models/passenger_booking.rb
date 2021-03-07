class PassengerBooking < ApplicationRecord
  belongs_to :passenger, inverse_of: :passenger_bookings
  belongs_to :booking, inverse_of: :passenger_bookings
end
