class Car < ApplicationRecord
  validates_presence_of :model, :car_type, :color, :photo_id, :year
  has_many :accidents
  has_one :drivers

  before_destroy :destroy_drivers_and_accidents

   private

   def destroy_drivers_and_accidents()
     Accident.where(car_id: self.id).destroy_all
     Driver.where(car_id: self.id).destroy_all
   end
end
