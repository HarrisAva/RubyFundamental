# Basic conditional - one line condition
puts "hello" if true
puts "hello" if true
puts "hello" if 5 == 5
puts "hello" if 4 != 5


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

grade = 'A'
case grade
  when 'A'
    puts 'You got an A!'
  when 'B'
    puts 'You got a B.'
  when 'C'
    puts 'You got a C.'
  when 'D'
    puts 'You got a D.'
  when 'F'
    puts 'You got an F.'
end # =>

number = 5
if number > 0
  puts 'The number is positive.'
elsif number < 0
  puts 'The number is negative.'
else
  puts 'The number is zero.'
end # => The number is positive.

### Loops ####
# iteration run for ? numbers of times, need to break loop

# Generic loop - not often use
i = 0
loop do
  puts " i is #{i}"
  i += 1  # need to add increment
  break if i == 10
end #

# While loop - use when you don't know how many times you want to run the loop
# The while loop is used to execute a block of code repeatedly as long as a certain condition is true.

# while condition
#   # code to execute while condition is true
# end
i = 0
while i < 5
  puts i
  i += 1
end # => 0, 1, 2, 3, 4

# get user input with while loop
while gets.chomp != 'yes'
  puts "Are you done?"
end

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

(1..10) # => 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 (inclusive range) 
(1...10) # => 1, 2, 3, 4, 5, 6, 7, 8, 9 (exclusive Range)
('a'..'z') # => a, b, c, d, e, f, g, h, i, until z')

for i in 0..4
  puts "#{i} zombies incoming!"
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

# while condition with break if
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

# Times loop
# The times loop is used to execute a block of code a specified number of times. It is typically used to iterate the code over a range of numbers. (never change the variable)

3.times do
  puts "Hello!"
end # => "Hello!", "Hello!", "Hello!"


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

