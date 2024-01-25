
class Car
   attr_accessor :make, :model, :color

  def initialize (make, model, color)
    @make = make
    @model = model
    @color = color
  end

  def car_info
    # @make
    # @model
    # @color
     "Make: #{@make}, Model: #{@model}, Color: #{@color}" 
  end
end

#Create a Garage class:

#This class will manage a collection of Car objects.
#Add a method to find all cars of a specific color.
#Add a method to clear all cars from the garage.
class Garage 

  # attr_accessor :add_car, :remove_car, :list_cars

  def initialize
    @cars = []
  end

  def add_car (car)
    @cars.push(car)
  end

  def remove_car (make, model)
    @cars.delete_if { |car| car.make == make && car.model == model }
  end

  def list_cars
    @cars.map(&:car_info)
  end

  def find_cars_by_color(color)
    @cars.select { |car| car.color == color }.map(&:car_info)
  end

  def clear_cars
    @cars = []
  end

end