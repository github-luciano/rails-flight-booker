class Booking < ApplicationRecord
  belongs_to :primary
  belongs_to :passenger2
  belongs_to :passenger3
  belongs_to :passenger4
  belongs_to :flight
end
