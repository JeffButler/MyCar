class Accident < ApplicationRecord
  validates_presence_of :accident_type, :time, :car_id
  has_one :cars
end
