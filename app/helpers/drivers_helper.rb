module DriversHelper
  def get_car_info_for_driver(id)
    current_car = Car.find(id)
    return current_car.car_type + " " + current_car.model + " " + current_car.year.to_s
  end
end
