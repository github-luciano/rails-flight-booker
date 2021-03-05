class Booking < ApplicationRecord
  belongs_to :primary, class_name: 'Passenger', foreign_key: 'primary_id'
  belongs_to :passenger2, class_name: 'Passenger', foreign_key: 'passenger2_id', optional: true
  belongs_to :passenger3, class_name: 'Passenger', foreign_key: 'passenger3_id', optional: true
  belongs_to :passenger4, class_name: 'Passenger', foreign_key: 'passenger4_id', optional: true
  belongs_to :flight, class_name: 'Flight', foreign_key: 'flight_id'
  accepts_nested_attributes_for :passengers #you need nested attributes for passengers names. All the other info (billing,email,ecc) are stored in the bookings table, so in the table of the model and view you're using for the forms

end
