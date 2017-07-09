class Driver < ApplicationRecord
  validates_presence_of :name, :car_id
  has_many :cars
end
