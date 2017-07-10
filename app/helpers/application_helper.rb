module ApplicationHelper
  def get_car_info(id)
    begin
      current_car = Car.find(id)
      return current_car.car_type + " " + current_car.model + " " + current_car.year.to_s
    rescue => ex
      return "No Car Assigned"
    end
  end
end
