class Flight < ApplicationRecord
  belongs_to :departing, class_name: 'Airport', foreign_key: 'from_airport_id'
  belongs_to :arriving, class_name: 'Airport', foreign_key: 'to_airport_id'
  has_many :flights, class_name: 'Flight', foreign_key: 'flight_id'

end
