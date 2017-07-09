class Car < ApplicationRecord
  validates_presence_of :model, :car_type, :color, :photo_id, :year
  has_many :accidents
  has_one :drivers
end
