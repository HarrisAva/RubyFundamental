require_relative 'car'
class Garage < Car
  # no need to define getter/setter since Car class already has them, with attr_accessor that allow read and write.
  def initialize 
    @cars = []
  end

  def add_car(car)
    @cars.push(car)
  end

  def remove_car(make, model)
    @cars.delete_if { |car| car.make == make && car.model == model }
  end

  def list_cars
    @cars.map(&:info)
  end

  def find_cars_by_color(color)
    @cars.select { |car| car.color == color }.map(&:info)
  end

  def clear_cars
    @cars = []
  end
end