# for i in 0..20
# if i % 3 == 0 && i % 5 == 0
#   puts 'FizzBuzz'
# if i % 3 == 0
#   puts 'Fizz'
# if i % 5 == 0
#   puts 'Buzz'
# end
# else
#   puts i
# end # => 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16, 17, Fizz, 19, Buzz
my_name = 'Ava Harris'
puts my_name # => Ava Harris

width = 10
height = 5
area = width * height
puts area # => 50

number = 5
if number > 0
  puts 'positive'
elsif number < 0
  puts 'negative'
else
  puts 'zero'
end # => positive

def add(a,b)
  return a + b
end
puts add(1,2) # => 3

def multiply(a,b)
  return a * b
end # => 6
puts multiply(2,3) # => 6

numbers = [1,2,3,4,5]
numbers.each do |number|
  puts number
end # => 1, 2, 3, 4, 5

# student {
#   "name" => "Alice"
#   "age" => 30
# }
# puts student["name"] # => Alice
# puts student["age"] # => 30

{ "name" => "Alice", "age" => 30}.each do |key, value|
 puts "#{key}: #{value}" # => name: Alice, age: 30
end


(1..20).each do |i|
  if i % 3 == 0 && i % 5 == 0
    puts 'FizzBuzz'
  elsif i % 3 == 0
    puts 'Fizz'
  elsif i % 5 == 0
    puts 'Buzz'
  else
    puts i
  end
end

(1..100).each do |i|
  if i % 3 == 0 && i % 5 == 0 && i % 7 == 0
    puts "FizzBuzzSuper"
  elsif i % 3 == 0 && i % 7 == 0
    puts "FizzSuper"
  elsif i % 5 == 0 && i % 7 == 0
    puts "BuzzSuper"
  elsif i % 3 == 0 && i % 5 == 0
    puts "FizzBuzz"
  elsif i % 3 == 0
    puts "Fizz"
  elsif i % 5 == 0
    puts "Buzz"
  elsif i % 7 == 0
    puts "Super"
  else
    puts i
  end
end

# 1. Create New directory called "Area_Of_Rectangle"
# 2. Create a file called "main.rb"
# 3. You will need to write a program that prompts the user for  input for width and height
# 4. multiply them to get the area and display the result in a message.
# ex.
# - Enter width:
# - 4
# - Enter height: 
# - 5
# - The area is 20

puts "Enter width:"
width = gets.chomp.to_i # input is string, convert string to integer
puts "Enter height:"
height = gets.chomp.to_i
puts "Width is #{width}, Height is #{height}"
area = width * height
puts "The area is #{area}" # => Width is 4, Height is 5, The area is 20
