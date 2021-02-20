class Passenger < ApplicationRecord
  has_many :primaries, class_name: 'Booking', foreign_key: 'primary_id'
  has_many :passenger2, class_name: 'Booking', foreign_key: 'passenger2_id'
  has_many :passenger3, class_name: 'Booking', foreign_key: 'passenger3_id'
  has_many :passenger4, class_name: 'Booking', foreign_key: 'passenger4_id'
end
