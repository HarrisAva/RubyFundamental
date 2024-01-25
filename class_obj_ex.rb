###=== Class Object, Variables, Methods and Class Inheritance ===###

# Define a class called 'Animal' that takes a name as an argument.
class Animal
  def initialize(name)
    @name = name
  end

  # Define a method called 'speak' that prints the name of the animal.
  def speak
    puts 'I am a ' + @name
  end
end

# Create an instance of the Animal class called 'dog'.
dog = Animal.new('dog')
# Call the 'speak' method on the 'dog' instance.
dog.speak

# Define a class called 'Cat' that inherits from the 'Animal' class.
class Cat < Animal # Cat is subclass of Animal
  def initialize(name)
    @name = name
  end
end
# Create an instance of the 'Cat' class called 'cat' and call the 'speak' method on the 'cat' instance
cat = Cat.new('cat')
cat.speak

###===== Encapsulation and Access Modifiers ======###

# Define a class called Vehicle that takes a make and model as arguments.
class Vehicle
  def initialize(make, model)
    @make = make
    @model = model
  end

  # Define a method called print_make that prints the make of the car.
  def print_make
    puts @make
  end

  # Define a method called print_model that prints the model of the car.
  def print_model
    puts @model
  end

  # Define a method called print_details that prints the make and model of the car.
  #private  # if define as private, it can't be called outside of the class
  def print_detail
    puts @make
    puts @model
  end
end
vehicle = Vehicle.new('Ford', 'Fusion')
vehicle.print_detail

# Define a class called Car that inherits from the Vehicle class.
class Car < Vehicle
  def initialize(make, model, year)
    super(make, model) # inherit from parent class
    @year = year # new variable added to this class
  end

  # Define a method called print_details that prints the make, model, and year of the car.
  def print_detail
    puts @make
    puts @model
    puts @year 
  end
end
car = Car.new('Jeep', 'Cherokee', '2023')
car.print_detail

# Define a class called Motorcycle that inherits from the Vehicle class.
class Motorcycle < Vehicle
  def initialize (make, model, year)
    super(make, model)
    @year = year
  end

  def print_details
    puts @make
    puts @model
    puts @year
  end
end
motorcycle = Motorcycle.new('Honda', 'plusX', '2022')
motorcycle.print_detail

###===== Classes and Objects ======###
#Define a class called 'Car' that takes a make and model as arguments.
class Car
  def initialize(color)
    @color = color
  end
  
#Define a method called 'print_color' that prints the color of the car.
  def print_color
     @color
  end
end

#Create an instance of the 'Car' class called 'car'.
  car = Car.new('red')
  puts car.print_color # => red
#Create a test for the 'Car' class that tests the 'print_color' method.
  # see car_color.rb and class_object_spec.rb

###===== Inheritance ======###

#Define a class called 'Fruit' that takes a name as an argument.
class Fruit
  def initialize(name)
    @name = name
  end
#Define a method called 'print_name' that prints the name of the fruit.
  def print_name
    puts @name
  end
end
#Define a class called 'Apple' that inherits from the 'Fruit' class.
class Apple<Fruit
  def initialize(name)
    super(name)
  end
end
  
#Create an instance of the 'Apple' class called 'apple'.
  apple = Apple.new('apple')
puts apple.print_name
#Create a test for the 'Apple' class that tests the 'print_name' method.
  # see apple.rb and apple_spec.rb

###===== Enhanced Car Management System ======###

#Define a Car class:

#The class should initialize with a make, model, and color. Include methods to get and set each of these attributes.
class Car
   attr_accessor :make, :model, :color

  def initialize (make, model, color)
    @make = make
    @model = model
    @color = color
  end
 
  #Add a method info that returns a string with all the car's details.
  def car_info
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
    
#Implement methods to add a car, remove a car by make and model, and list all cars.
car1 = Car.new("BMW", "Z", "blue")
car2 = Car.new("Toyota", "Corolla", "red")
puts car1.car_info
puts car2.car_info
garage = Garage.new
garage.add_car(car1)
garage.add_car(car2)
puts garage.list_cars
garage.remove_car("Toyota", "Corolla")
puts garage.list_cars
puts garage.find_cars_by_color("blue")
# garage.clear_cars
# puts garage.list_cars

#Write tests for both classes: