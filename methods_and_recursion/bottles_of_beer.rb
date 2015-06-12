#!/usr/bin/env ruby

def bottles_of_beer(number = 99)
  while number > 0
  puts "#{number.to_s} bottles of beer on the wall, #{number.to_s} bottles of beer."
  number = number - 1
  puts "Take one down and pass it around, #{number.to_s} bottles of beer on the wall."
  puts ''
    if number == 0
      break
    end
  end

end

bottles_of_beer
