class Passenger < ApplicationRecord
  #has_many :primaries, class_name: 'Booking', foreign_key: 'primary_id'
  has_many :passenger_bookings, inverse_of: :passenger
  has_many :bookings, :through => :passenger_bookings


end
