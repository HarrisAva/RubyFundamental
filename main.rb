name = 'John Doe'
puts "Hello, #{name}!"

### Data Type ###

# String

# with plus + operation
puts 'Hello' + 'World' # => 'HelloWorld'
# with shovel << operation
puts 'Hello' << 'World' # => 'HelloWorld'
# with concatenation
puts 'Hello'.concat('World') # HelloWorld
puts 'Welcome '.concat('to ').concat('Ruby!') # Welcome to Ruby!)
# with interpolation
puts "Hello, #{name}!" # Hello, John Doe!
puts 'Hello, #{name}!' # Hello, #{name}!

name = 'John Doe'
puts "Hello, #{name}!\nWelcome to programing!" # using "" with \n for new line
# => Hello, John Doe!
# => Welcome to programing!

# Strings and arithmetic operators (joining strings)
first_name = 'John'
last_name = 'Doe'
full_name = first_name + ' ' + last_name
puts full_name # => "John Doe"
first_name << ' ' << last_name # => "John Doe", << appends to first_name a space then the lastname
puts first_name # => "John Doe" - first_name is now "John Doe"

# String interpolations
age = 30
puts "My name is #{first_name} and I am #{age} years old." # => "My name is John Doe and I am 30 years old."

first_name = 'John'
last_name = 'Doe'
full_name = "#{first_name} #{last_name}"
puts full_name # => "John Doe"


6.to_s # => '6' - convert number to String
nil.to_s # => '' - convert nil to String

# Substring - string as an array
'hello'[0] # => 'h'
'hello'[0..2] # => 'hel'  - range from 0 to 2
'hello'[0, 4] # => 'hell' - everything in between, not include 4
'hello'[-1] # => 'o' - get the last item
'hello'[-4] # => 'e' - get the 4th last item
'hello'[-4, 2] # => 'el' - get the 4th last item and the 2nd item 

"hello".upcase # => "HELLO"
"HELLO".locase # => "hello"


# Integer
# with + operation
1 + 2 # => 3
# with shovel << operation
1 << 2 # => 4
# with concatenation
#1.concat(2) # => 12

# Integer - whole number without decimal point
 1 + 1 # => 2
 2 * 2 # => 4
 3 - 3 # => 0
 4 / 4 # => 1
10 / 3 # => 3 (not 3.3333))
 13.to_f # => 13.0
5 facotrial # => 120

# Float - with decimal point
1.0 + 1.0 # => 2.0
2.0 * 2.0 # => 4.0
3.0 - 3.0 # => 0.0
4.0 / 4.0 # => 1.0
13.0.to_i # => 13
13.9.to_i # => 13

# Boolean
puts true # => true
puts false # => false
6.even? # => true
3.even? # => false

# Array

num_array = [1, 2, 3, 4, 5]
str_array = ['a', 'b', 'c']
mixed_array = [1, 'two', 3.0, [4, 'five']]

# create Array with size and default value (nil)
empty_array = Array.new(3) # => [nil, nil, nil] - array of size 3, default value
zeros = Array.new(3, 0) # => [0, 0, 0] - array of 3 for value = 0
bool_array = Array.new(3, true) # => [true, true, true]


# accessing Array 
array = [10, 20, 30, 40, 50]
array[0]   # => 10
array[2]   # => 30
array[-1]  # => 50 (last element)
array[-2]  # => 40 (second to last element)
array.first(2) # => [10, 20] - first 2 elements)
array.last(2) # => [30, 40] - last 2 elements))

# Adding and substrating elements
array = [1, 2, 3]
array.push(4, 5) # => [1, 2, 3, 4, 5] - add elements to the end of the array
array << 3 # => [1, 2, 3, 4, 5, 3] - add 3 to the end of the array

array = [] # => []
array.push(1, 2, 3) # => [1, 2, 3] - add elements to the end of the array (opposite to unshift))
array << 2 # => [1, 2, 3, 2] - add 2 to the end of the array
array.insert(2, 1.5) # => [1, 2, 1.5, 3, 2] - insert 1.5 at index 2
array.pop # => 2 - remove the last element
array # => [1, 2, 1.5, 3] - array after pop
array.shift # => 1 - remove the first element
array # => [2, 1.5, 3] - array after shift
array.unshift(0) # => [0, 2, 1.5, 3] - add 0 to the beginning of the array (opposite to push)
array # => [0, 2, 1.5, 3] - array after unshift
array.delete(1.5) # => [0, 2, 3] - remove 1.5 from the array
array.delete_at(0) # => [2, 3] - remove the element at index 0

# Adding and Substracting Arrays
array1 = [1, 2, 3]
array2 = [4, 5]
array1 + array2 # => [1, 2, 3, 4, 5] - concatenate arrays
array1.concat(array2) # => [1, 2, 3, 4, 5] - concatenate (same as adding arrays)
array3 = [1, 1, 1, 2, 3, 4] - [1, 4]  # remove every 1 and 4 in the array => [2, 3]

# Basic Array Methods
array = [1, 2, 3, 4, 5]
array.size # => 5
array.length # => 5
array.include?(3) # => true
array.include?(6) # => false
array.reverse # => [5, 4, 3, 2, 1] - reverse the array
array.reverse! # => [1, 2, 3, 4, 5] - reverse the array and change the

[].empty? # => true
[1, 2, 3].empty? # => false
[1, 2, 3].any? # => true
[1, 2, 3].any?(1) # => true
[1, 2, 3].any?(4) # => false
[1, 2, 3].all? # => true
[1, 2, 4].all? { |num| num.even? } # => false
[1, 2, 3].all?(Integer) # => true
[1, 2i, 3.0].all?(Numeric) # => true
[nil, true, 99].all? # => false

[1, 2, 3].split # => ["1", "2", "3"] - split the array into subarrays
"Hi how are you".split # => ["Hi", "how", "are", "you"] - split the string into subarrays
"I am a student".split(" ") # => ["I", "am", "a", "student"] - split the string into subaarrays by the space
[1, 2, 3].join # => "123" - join the array into a string
[1, 2, 3].join("-") # => "1-2-3" - join the array into a string with a separator
[1, 2, 3].join(", ") # => "1, 2, 3" - join the array into a string with a separator
[1, 2, 3].join(" and ") # => "1 and 2 and 3" - join the array into a string with a separator


### Hashes ### - (Object in Ruby, with key-value pairs)

# Creating hashes
student = { 'name' => 'John Doe', 'age' => 30 } # nested hash
person = {
  'name' => 'John Doe',
  'age' => 30,
  'is_student' => true
}
puts person['name'] # => 'John Doe'

my_hash = Hash.new # => {} - create a new hash with default value (nil)
empty_hash = {}

grade = Hash.new
grade.default ="Need Improvement"
grade[95..100] = "A+"
grade[90..94] = "A"
grade[80..89] = "B"
grade[70..79] = "C"
grade[60..69] = "D"

puts grades #=> {"A+" => 95, "A" => 90, "B" => 80}
puts grades[95] #=> "A+"
puts grades[89] #=> "B"
puts grades[59] #=> "Need Improvement"]

my_hash = { # can be any type of data
  "This is a key" => "This is a value",
  :name => "Ava",
  'array' => [1, 2, 3 ]
  #'empty' => {}

# modifying Hash
person['age'] = 31 # update the age
person['is_student'] = false # update the is_student

student = {
  name: 'Ava',
  grade: 'A'
}

# access Hash
puts student[:name] # => Ava
puts student[:grade] # => A
puts "Hello, #{student[:name]}!" # => Hello, Ava!"
puts student # => { name: "Ava", grade: "A" }
# puts { name: 'John Doe', age: 30 } # => { name: "John Doe", age: 30 } - error

# Accessing Hash values
  shoes = {
    'summer' => 'sandal',
    'winter' => 'boots'
  }

  shoes['summer'] # => 'sandal'
  shoes['hiking'] # KeyError - key not fount

# Adding, Changing and Deleting Data
  shoes['fall'] = 'sneakers' # add a new key-value pair
  shoes['summer'] = 'flip-flops' # change the value for the key 'summer'
  shoes # => { 'summer' => 'flip-flops', 'winter' => 'boots', 'fall' => 'sneakers' }'
  shoes.delete('summer') # => 'flip-flops' - delete the key-value pair
  shoes # => { 'winter' => 'boots', 'fall' => 'sneakers'

# Method
books = {
  'The Great Gatsby' => 'F. Scott Fitzgerald',
  'The Catcher in the Rye' => 'J.D. Salinger'
}

  books.keys # => ["The Great Gatsby", "The Catcher in the Rye"]
  books.values # => ["F. Scott Fitzgerald", "J.D. Salinger"] 

# Merging Two Hashes
  hash1 = { 'a' => 100, 'b' => 200 }
  hash2 = { 'b' => 300, 'c' => 400 }

  hash1.merge(hash2) # => { 'a' => 100, 'b' => 300, 'c' => 400 } - merge two hashes)
   
# Symbols as Hash Keys (: symbol)
  
# Symbols are immutable, meaning they cannot be changed (unlike string)

american_cars = { # : before variable
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}

japanese_cars = { # : after variable ** recommend **
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}
# Accessing Symbols using :
american_cars[:ford] # => "Mustang"
japanese_cars[:toyota] # => "Corolla"

  
:symbol.to_s # => "symbol"
"string" === "string" # => true
"string".object_id == "string".object_id # => false - because they are in different location
:symbol.object_id == :symbol.object_id # => true - because they are in the same location  

# Nil
puts nil # => nil
# nil is a special value that represents 'no value' or 'nothing'

# Variable
name = 'John Doe'
puts name # => John Doe
# Constant
NAME = 'John Doe'
puts NAME # => John Doe

### Ruby variables ###
# Ruby variables are dynamically typed, which means that you don't need to specify the type of a variable before assign
# Ruby doesn't have a built-in way to check if a variable is defined, so you need to check
# **** use Snake_case for variable names (underscore _ )

my_location = 'NY'
johns_location = my_location
johns_location # => 'NY'

local_var = "I'm local"
CONSTANT_VAR = "I'm a constant"

my_var = 10
my_var = "Now I'm a string"

total_amount = 100

# practice problem
my_name = 'John'
PI = 3.14
puts my_name, PI # => John 3.14

### Arithmetic Operators ###
# +, -, *, /, %, **
# Addition
puts 1 + 1 # => 2
# Subtraction
puts 2 - 1 # => 1
# Multiplication
puts 2 * 2 # => 4
# Division
puts 4 / 2 # => 2
puts float_division = 4.0 / 2 # => 2.0
# Modulo / modulus
puts 5 % 2 # => 1
# Exponent
puts 2**3 # => 8
# Variables
x = 5
y = 10

sum = x + y
puts sum # => 15
difference = y - x
puts difference # => 5

# Order of operations
result = (x + y) * 2
puts result # => 30

# Compound assignment operators
x += 5 # equivalent to x = x + 5
puts x # => 10
y -= 3 # equivalent to y = y - 3
puts y # => 7

age = 18
age += 4 # equivalent to age = age + 4 => 22
age -= 4 # equivalent to age = age - 4 => 18
age *= 2 # equivalent to age = age * 2 => 36
#age /= 2 # equivalent to age = age / 2 => 9

# Conditional Operators & Control Flow
  
# ==, !=, <, >, <=, >=,
# &&, ||, ! -> logical operators And, Or, Not
# <=> space ship operator, to check if the first value is <, >, or == to the second value. Result is -1 for <, 1 for >, or 0 for = 
  1 <=> 3 # => -1 , 1 is less than 3 
  3 <=> 3 # => 0 ,  3 is equal to 3
  4 <=> 3 # => 1 ,  4 is greater than 3
  


true && true    # => true
true && false   # => false
false && false  # => false

true || true    # => true
true || false   # => true
false || false  # => false

!true   # => false
!false  # => true

# Ternary Operator - shorten if/else statement
# condition ? true_value : false_value
age = 20
message = age >= 18 ? 'You are an adult.' : 'You are a minor.'
puts message # => "You are an adult."

age = 18
message = age >= 18 ? 'You can vote!' : 'You cannot vote.' # => "You can vote!""
puts message # => "You can vote!"

age = 18
age >= 18 && age <= 60 # => true
age >= 18 || age <= 60 # => true

### Control Flow with Conditional Statements ###

# if/else
# if condition
#   # code to execute if condition is true
# end

# if condition
#   # code to execute if condition is true
# else
#   # code to execute if condition is false
# end

temperature = 30
if temperature > 25
  puts "It's hot outside!"
else
  puts "It's not hot outside."
end # => "It's not hot outside."

# if/elsif/else
# The elsif Statement: The elsif statement allows you to check multiple conditions. It is used in conjunction with the if statement and must come before the else block.

temperature = 20
if temperature > 25
  puts "It's hot outside!"
elsif temperature < 10
  puts "It's cold outside!"
else
  puts "It's moderate outside."
end # => "It's moderate outside."

# unless/else
# The unless Statement: The unless statement is the opposite of the if statement. It executes the code block only if the condition is false.

# unless condition
#   # code to execute if condition is false
# end

age = 17
unless age >= 18
  puts 'You are a minor.'
end # => "You are a minor."

age = 18
unless age < 18
  puts 'You can vote!'
end # => "You can vote!"

# Case Statement
# The case statement is used to compare a value against multiple conditions. It is similar to the if/else statement, but it is more concise and easier to read.

# case expression
# when condition1
#   # code to execute if condition1 is true
# wnen condition2
#   # code to execute if condition2 is true
# else
#   # code to execute if none of the conditions are true
# end

age = 18
case age
when 0..12
  puts 'You are a child.'
when 13..17
  puts 'You are a teenager.'
when 18..65
  puts 'You are an adult.'
end # => "You are an adult."
# 0..12 is the range of values that the age variable can take.

number = 5
if number > 0
  puts 'The number is positive.'
elsif number < 0
  puts 'The number is negative.'
else
  puts 'The number is zero.'
end # => The number is positive.

# While loop
# The while loop is used to execute a block of code repeatedly as long as a certain condition is true.
# while condition
#   # code to execute while condition is true
# end
i = 0
while i < 5
  puts i
  i += 1
end # => 0, 1, 2, 3, 4

# Until loop
# The until loop is similar to the while loop, except that it checks the condition after executing the code block.

# until condition
#   # code to execute while condition is false
# end
i = 0
until i >= 5
  puts i
  i += 1
end # => 0, 1, 2, 3, 4

# For loop
# The for loop is used to iterate over a range of values. It is typically used to iterate over an array or a range of numbers.

# for variable in range
#   # code to execute for each value in the range
# end
for i in 0..4
  puts i
end # => 0, 1, 2, 3, 4

# Each loop
# The each loop is used to iterate over each element in an array. It is typically used to iterate over a collection

# collection.each do |element|
#   # code to execute for each element in the collection
# end

fruits = %w[apple banana cherry]
fruits.each do |fruit|
  puts fruit
end

[1, 2, 3, 4, 5].each do |number|
  puts number
end # => 1, 2, 3, 4, 5

### Loop Control Statements ###
# Loop control statements are used to control the flow of a loop. They allow you to break out of a loop, skip an iteratate, or excute a loop forever.

# break statement
# The break statement is used to exit a loop prematurely. It is typically used to terminate a loop when a certain condition is met.

# while condition
#   # code to execute while condition is true
#   break if condition # exit the loop if condition is true
# end

i = 0
while i < 5
  puts i
  break if i == 3

  i += 1
end # => 0, 1, 2, 3

# next statement
# The next statement is used to skip the current iteration of a loop and move to the next iteration. It is typically used to skip a specific iteration of a loop.

# for variable in range
#   # code to execute for each value in the range
#   next if condition # skip the current iteration if condition is true
# end
for i in 0..5
  next if i.even?

  puts i
end # => 1

i = 0
while i < 5
  i += 1
  next if i == 2

  puts i
end # => 1, 3, 4, 5

# redo statement
# The redo statement is used to restart the current iteration of a loop. It is typically used to restart a loop

# practice problem

# Write a Ruby script that prints the numbers from 1 to 20. For multiples of three, print "Fizz" instead of the number. For multiples of five, print "Buzz". For numbers that are multiples of both three and five, print "FizzBuzz".

# for i in 0..20
#   if i % 3 == 0 && i % 5 == 0
#     puts 'FizzBuzz'
#   elsif i % 3 == 0
#     puts 'Fizz'
#   elsif i % 5 == 0
#     puts 'Buzz'
#   else
#     puts i
#   end # => 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16, 17, Fizz, 19, Buzz

# Write a program that prints the numbers from 1 to 10 using a while loop.

i = 1
while i <= 10
  puts i
  i += 1
end # => 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

# Write a program that prints the even numbers from 1 to 20 using a while loop.

i = 1
while i <= 20
  puts i if i.even?
  i += 1
end # => 2, 4, 6, 8, 10, 12, 14, 16, 18, 20

# Write a program that prints the numbers from 1 to 20 except for the multiples of 3 using a while loop.
i = 1
while i <= 20
  i += 1
  next if i % 3 == 0

  puts i
end # => 1, 2, 4, 5, 7, 8, 10, 11, 13

# => 1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20

### Bulit-In methods in Ruby ###

# The Ruby language provides a number of built-in methods that can be used to perform common tasks. These methods are called "built-in methods" because they are provided by the Ruby interpreter and are available to all Ruby programs.

def say_hello
  puts 'Hello, World!'
end
say_hello

def say_hi(name)
  puts "Hi, #{name}"
end
say_hi('Ava')

# Return value
# the last line is the return value, no need to put 'return'

def add(a, b)
  a + b 
end
add(1, 2) # => 3

def sum(a, b)
  a + b
end
sum(2, 3) # => 5)

def intro(name = "James")
  puts "Hello, my name is #{name}"
end
intro # => Hello, my name is James


# Some of the most commonly used built-in methods include:

# puts and print
# The puts and print methods are used to print a message to the console. It can be used to display text
puts 'Hello, World!'
#print 'Hello, World!' # print display in the same line of the cursor

# User Input
# The gets method is used to read a line of input from the user. It can be used to prompt the user for input 

puts 'What is your name?'
name = gets.chomp
puts "Hello, #{name}. How are you?"



### Testing with RSpec ###

# RSpec is a testing framework that allows you to write tests for your Ruby code. It provides a DSL (Domain-Specific Language) that makes it easy to write and run tests.
# RSpec is known for its human-readable syntax that make it easy to understand and maintain.

# Setting up RSpec
# To set up RSpec, add the following in you Gemfile:

# frozen_string_literal: true

# source "https://rubygems.org"

# git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# # gem "rails"

# gem 'rspec'

# You need to install the rspec gem. You can do this by running the following command in your terminal:
# gem install rspec
# bundle install
# rspec --initialize_clone
