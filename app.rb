numbers = [1, 2, 3, 4, 5, -1, -2, -3, -4, -5, 0, 0, 0, 0, 0]
# 
  sum = 0
  positives = 0
  negatives = 0
  zero = 0
  numbers.each do |number|
    sum += number
    puts sum
    if number > 0
      positives += 1
    elsif number < 0
      negatives += 1
    else
      zero += 1
    end

  end
puts "sum: #{sum}
puts "positives: #{positives}"
puts "negative: #{negatives}"  
puts "zero: #{zero}"

    
      
    