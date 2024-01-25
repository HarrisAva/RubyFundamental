class Car
  attr_accessor :make, :model, :color

  def initialize(make, model, color)
    @make = make
    @model = model
    @color = color
  end
# replace getter and setter with attr_accessor
  # def make
  #   @make
  # end
  # def model
  #   @model
  # end
  # def color
  #   @color
  # end

  # def make=(make)
  #   @make = make
  # end
  # def model=(model)
  #   @model = model
  # end
  # def color=(color)
  #   @color = color
  # end
    
  def info
     "Make: #{@make}, Model: #{@model}, Color: #{@color}"
  end
end
# car = Car.new("Jeep", "Cherokee", "Black")
# puts car.info