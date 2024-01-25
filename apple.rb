class Fruit
  
  def initialize(name)
    @name = name
  end
#Define a method called 'print_name' that prints the name of the fruit.
  def print_name
    @name
  end
end
#Define a class called 'Apple' that inherits from the 'Fruit' class.
class Apple<Fruit
  def initialize(name)
    super(name)
  end
end

