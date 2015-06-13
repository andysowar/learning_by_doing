#!/usr/bin/env ruby

def pluralize(number, string)
  string += 's' unless number == 1
  return string
end

def bottles(beer)
  puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall." if beer == 0
  return nil if beer == 0
  puts "#{beer} #{pluralize(beer, 'bottle')} of beer on the wall, #{beer} #{pluralize(beer, 'bottle')} of beer."
  puts "Take one down and pass it around, #{beer - 1} #{pluralize(beer - 1, 'bottle')} of beer on the wall."
  puts ''
  bottles(beer - 1)
end

bottles(99)
