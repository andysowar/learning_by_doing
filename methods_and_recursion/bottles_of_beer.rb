#!/usr/bin/env ruby

def pluralize(number, string)
  string += 's' unless number == 1
  return string
end

def bottles(beer)
  return nil if beer == 0
  puts "#{beer} #{pluralize(beer, 'bottle')} of beer on the wall, #{beer} #{pluralize(beer, 'bottle')} of beer."
  puts "Take one down and pass it around, #{beer - 1} #{pluralize(beer - 1, 'bottle')} of beer on the wall."
  puts ''
  bottles(beer - 1)
end

bottles(99)
