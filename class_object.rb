### Class and Object ###

# The class keyword is used to create a new class.
# The purpose of a class is to group methods and variables into a single unit that can be used more easily. Classes are like factories that produce objects. The objects that are created are called instances of that class.

class Book
end

book1 = Book.new # use 'new' method to creat an instance or object of the class

#=== Example Book class ====================

class Book
  attr_accessor :title, :author, :pages # can be accessed outside the class
# create properrties and behaviors for the class
# method instance use 'def'
# The initialize method is a special method that is called when an instance of a class is created. It is used to initialize the instance variables of the class.
# The initialize method is called automatically when an instance of the class is created.
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages  
  end

  def print_title
    puts @title
  end

  def print_author
    puts @author
  end

  def print_pages
    puts @pages
  end
end

# creating an instance of the Book class 
book1 = Book.new("Harry Potter", "JK Rowling", 400)
book2 = Book.new("Lord of the Rings", "Tolkein", 700)

# calling the instance methods on the book1 and book2 ObjectSpace
book1.print_title # Harry Potter
book1.print_pages # 400
book2.print_title # Lord of the Rings
book2.print_pages # 700

#=== End of Example Book class ====================
  
# ====== Example Party class =======================

class Party
 # @@attendee_count = 0
 # @@attendee_list = []
  # "class variable" above (with @@) will be shared by all instances of the class (object), so party_1, party_2, etc. will all have the same value.

  # need to use "instance variable" (with @) that is specific to each instance of the class (e.g. party_1, party_2), so each instance will have its own value.
  # instance variable is defined with @, and class variable is defined with @@.

  # make an attribute accessible from outside the class
  att_accesstor :attendee_count, :attendee_list
  
  def initialize
    @attendee_count = 0
    @attendee_list = []
  end
  
  def add_attendee(name)
   @attendee_list.push(name) # or,@@attendee_list << name
   @attendee_count += 1
  end  

  def print_attendees
    puts "There are #{@attendee_count} attendees:"
    puts "Attendee Names:"
   @attendee_list.each do |attendee|
      puts attendee
    end
  end
end
  # or, @attendee_list.each { |attendee| puts attendee }
  # or, puts "Attendee Names: #{@attendee_list}"

  party_1 = Party.new # creates an instance of the class (party_1 object)
    party_1.add_attendee("Alice")
    party_1.add_attendee("Tom")
    party_1.add_attendee("John")
  party_1.print_attendees # prints "There are 3 attendees:" and "Attendee Names: Alice, Tom, John

 party_2 = Party.new # creates an instance of the class (party_2 object)
    party_2.add_attendee("Bob")
    party_2.add_attendee("Jane")
 party_2.print_attendees # prints out "There are 2 attendees: Alice, Tom"

# ====== End of Example Party class =======================

# attribute accessor
# use attr_accessor to make an attribute accessible from outside the class
att_accessor :attendee_count, :attendee_list

puts party_1.attendee_count # => 3
puts party_1.attendee_list # => ["Alice", "Tom", "John"]

# attribute accessor reader (read only, can't change)
# use attr_reader to make an attribute accessible from outside the class, but not writable (change) from outside the class
attr_reader :attendee_count, :attendence_list
  #ex.
party_1.attendee_list = [] # error

# attribute accessor (read and write)
# use attr_accessor to make an attribute accessible from outside the class, and writable (change) from outside the class
att_accesstor :attendee_count, :attendee_list
  # ex. 
party_1.attendee_list = ["Tom", "John"] 
party_1.attendee_list = []

# attribute accessor writer
# use attr_writer to make an attribute not accessible from outside the class, but writable (change) from outside the class
attr_writer :attendee_count, :attendee_list

#########======= Inheritance ===================############

# Inheritance is the ability to create a new class that inherits the properties and behaviors of an existing class.
# The new class is called a subclass and the existing class is called a superclass.
# The subclass inherits the properties and behaviors of the superclass.
# The subclass can also have its own properties and behaviors.
#***It allows us to define a class that inherits from another class and add new properties and behaviors to it. This is useful because it allows us to avoid writing the same code over and over again.

#==Example Subclass (child class) and Superclass (parent class) ====
# Book class that inherits from an Item class

class Item
  def initialize (name, price) # 2 properties
    @name = name
    @price = price
  end

  def print_name
    puts @name
  end
end

class Book < Item # Book class inherits from Item class (< Item)
  def initialize(name, price, author, pages) # 4 properties
    super(name, price) # call the parent class's initialize method
    @author = author # add a new property
    @pages = pages # add a new property
  end

  def print_author
    puts @author
  end

  def print_price
    puts @price
  end

  def print_pages
    puts @pages
  end
end

book1 = Book.new ( "Harry Potter", 20, "JK Rowling", 400)
book1.print_name # Harry Potter
book1.print_price # 20
book1.print_author # JK Rowling
book1.print_pages # 400
# == End of Example Subclass (child class) and Superclass (parent class) ==

#########======= Polymorphism ===================############

# Polymorphism is the ability of an object to take on many forms.
# It is the ability of an object to respond to the same method in different ways.
# This is achieved by defining methods with the same name in different classes.
# The method can then be called on an object of any class that has the method defined.
#***It allows us to define a method in a superclass that has different implementations in a subclass. This is useful because it allows us to write code that is more flexible and reusable.
#***In a practical sense this means that we can write code that works with different types of objects. For example, we can write code that works with different types of animals.

#=== Example of polymorphism ====
class Animal # parent class
  def speak
    puts "I am an animal"
  end
end

class Dog < Animal # subclass to Animal parent class
  def speak
    puts "I am a dog!"
  end
end

class Cat < Animal # subclass to Animal parent class
  def speak
    puts "I am a cat!"
  end
end

class Bird < Animal # subclass to Animal parent class
  # Bird does not have 'speak' method, but we can call speak method from parent class.
  def fly
    puts "Bird can fly"
  end

def speak(animal) # 'speak' is polymorphic method
  animal.speak
end

animal = Animal.new
speak(animal) # I am an animal

dog = Dog.new
speak(dog) # I am a dog!

cat = Cat.new
speak(cat) # I am a cat!

bird = Bird.new
  speak(bird) # => I am an animal?? - get it from parent class

# === End of Example of polymorphism ====

#########======= Encapsulation and Access Modifiers =========##########
# Encapsulation is the process of hiding the internal details of an object. It is the process of hiding the internal details of an object so that the object can only be accessed through a well-defined interface.
#***It allows us to control the accessibility of the object's properties and methods in the class. 
# Encapsulation is the concept of bundling data and methods that work on that data within a single unit.
# This is done to prevent external code from modifying the data directly.
#***It helps us to avoid accidental changes to the data and methods that we don't want to allow.

# Access modifiers are used to control the accessibility of class variables and methods. 
#There are 3 types:
  #public - accessible from anywhere
  #protected - accessible from within the class and its subclasses
  #private - accessible only within the class

#========== Example of encapsulation =============

class Person
 
  def initialize(name, age)
    @name = name
    @age = age  
  end

  def print_name # public method
    puts "Name: #{@name}"
  end

  private # private method - can't be access outside the class
  def print_age
    puts "Age: #{@age}"
  end
end

person = Person.new("John", 30)
person.print_name # Name: John
person.print_age # Error: private method `print_age' called for #<Person:0x00007

#========== End of Example of encapsulation =============

#########======= Getters and Setters ===================############
# Getters and setters are methods that allow us to access (get) and modify (set) the values of 'private' instance variables.
#***They are used to control the accessibility of the instance variables in a class.
#***They are used to validate the input and output of the class.
#***They are used to provide a level of abstraction for the class.
#***They are used to provide a level of security for the class.
#***They are used to provide a level of flexibility and control for the class.

#=== Example of getters and setters ====
class Person
  
  def initialize(name, age)
    @name = name
    @age = age  
  end
  
 def name # getter method
   @name
 end
 def setName=(name) # setter method
   @name = name
 end

  def age # getter method
    @age
  end
  def setAge=(age) # setter method
    @age = age
  end

person = Person.new("John", 30) # create a new instance of the Person class
  puts person.name # => John
  puts perosn.age # => 30

  # change name and age
  person.setName = "Jane" # setter method to change the name
  puts person.name # => Jane
  person.setAge = 25 # setter method to changet the age
  puts person.age # => 25

# example 2 getter and setter

  class Box
    def initialize(w, h)
      @width = w
      @height = h
    end

    def getWidth
      return @width
    end

    def getHeight
      return @height
    end
   
    def setWidth=(w)
      @width = w
    end
    
    def setHeight=(h)
      @height = h
    end

    def getArea
      return @width * @height
    end

    # private :getWidth, :getHeight, :setWidth, :setHeight
    #public :getArea
  end

  box1 - Box.new(10, 20)
  box1.getArea # => 200

  box1.setWidth = 30
  box1.setHeight = 40
  box1.getArea # => 1200

  

#=== End of Example of getters and setters ====

#########===== Accessing modifiers with attr_accessor===========############
  #***It allows us to control the accessibility of the attribute in a class.
  # It allows us to define a getter and setter method for an attribute (variable) in a class.
  # attr_accessor is a shortcut for attr_reader (getter) and attr_writer (setter) - read and write. # 
  # This means that we can get and set the value of variables 
  # attr_reader is a method used to define getters for instance variables (read only)

#=== Example of access modifiers with attr_accessor ====
  class Person
    attr_accessor :name, :age # shortcut for attr_reader and attr_writer (getter and setter). **When using attr_accessor, you don't need to define getter and setter methods.**
    
    def initialize(name, age)
      @name = name 
      @age = age  
    end
  end

  person = Person.new("Tom", 50)
  puts person # Name: Tom, Age: 50
  # change the name and age
  person.name = "Ava" # setter method allow to change the name
  person.age = 40 # setter method allow to change the age
  puts person # Name: Ava, Age: 40 - name and age are changed

  ## example 2 - to show child class can access parent class's variables (name, age)  
  class Parent
    attr_accessor :name, :age

    def initialize(name, age)
      @name = name
      @age = age
      
    def greet
      "Hello, my name is #{@name}. I am from the parent class"
    end
  end

  class Child < Parent

    def initiailize(name, age, school)
      super(name, age) # call the parent class's initialize method
      @school = school # add a new property to child class
    end
      
    def greet # polymorphism - child class can override the parent class's greet method
      "I am #{@name} and I go to #{@school}"
      #super + " and I go to #{@school}" # call the parent class's greet method and add a new additional message
      #super + " and this is from the child class" # may use 'super' to call the parent class's method
    end
    
    ## example 3
    
#=== End of Example of access modifiers with attr_accessor ====

#########===== Modules and Mixins===========############
  # Modules are used to group related functionality into a single unit (classes, methods, constants, etc.).
  #***They are used to organize code and make it more reusable.
  #***They are used to provide a level of abstraction for the code.
  #***It allows us to define a set of methods, classes, variables,etc that can be used by other classes.

  #=== Example of modules ====
  module MathModule # use keyword 'module'
    def add(a, b)
      a + b
    end
  end

  class Calculator
    include MathModule # include the MathModule module into the Calculator class, means we can call the add method from the MathModule module - may use 'extend' instead of 'include''
    #extend MathModule
    
    attr_accessor :num1, :num2

    def initialize(num1, num2)
      @num1 = num1
      @num2 = num2 
    end
  end
  calculator = Calculator.new(5, 10)
  puts calculator.add(5, 10) # 15
  #=== End of Example of modules ====

  ####========= Class methods and class variables ==========#####
  # The difference between classes and modules:
    # Classes are used to create objects, 
    # Modules are used to group related methods, classes and constants together. They are useful when you want to share code between classes.

  # Class methods are methods that are defined in a class and can be called on the class itself
  # The @@ symbol is used to define class variables that can be accessed by all class methods in the class
  # 'self' keyword refers to the class itself. 
  # In method, 'self' refers to the instance of the class that the method is called on

  #=== Example of class methods and class variables ====

  class Book
    @@book_count = 0 # class variable, the value is the same for all instances of the class

    def initialize(title, author)
      @title = title
      @author = author
      @@book_count += 1 # increment the book count. when adding a new instance of the class, the value of @@book_count will be incremented by 1
    end

    def self.book_count # self in class method that can call directly from the class
      @@book_count
    end
  end
  book1 = Book.new("Harry Potter", "JK Rowling")
  book2 = Book.new("The Lord of the Rings", "J.R.R. Tol")

  puts Book.book_count # 2 - notice that we can call the method directly using 'Book' class name, no need to create an instance of the class'

  # example of 'self' in a method that refers to the instance of the class
  Class User
    def innitialize(name)
      @name = name
    end

    def say_hello
      puts "Hello, my name is #{self.name}" # self.name in an instance method (is the same as @name). It points to 'current object'.
    end

    def name
      @name
    end
end

user = User.new("John")
user.says_hello # Hello, my name is John

# example of 'self' in a class method method so we can call method on the User class
class User

  def self.say_hello
    puts "Hello"
  end
end
User.say_hello # notice that we don't need to create an instance of the 'User' class to call the say_hello method. we can call the method directly on the 'User' class.

  #=== End of Example of class methods and class variables ====
  
  


  
  
  
  
  



