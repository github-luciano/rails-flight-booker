class Booking < ApplicationRecord
  #belongs_to :primary, class_name: 'Passenger', foreign_key: 'primary_id'
  belongs_to :flight, class_name: 'Flight', foreign_key: 'flight_id'
  has_many :passenger_bookings, inverse_of: :booking
  has_many :passengers, :through => :passenger_bookings


  accepts_nested_attributes_for :passengers #you need nested attributes for passengers names. All the other info (billing,email,ecc) are stored in the bookings table, so in the table of the model and view you're using for the forms

end
