class Animal
  att_accesstor :name, :sound
  
  def initialize(name, sound)
    @name = name
    @sound = sound
  end
  
  def speak
    puts "I am #{@name} and I say #{@sound}"
  end
end

dog = Animal.new("Titan", "Woof!")
dog.speak # => "I am Titan and I say Woof!"
  