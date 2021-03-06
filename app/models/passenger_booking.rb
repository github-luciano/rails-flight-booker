class PassengerBooking < ApplicationRecord
  belongs_to :passengers
  belongs_to :bookings
end
