#!/usr/bin/env ruby

def pluralize(number, string)
  string += 's' unless number == 1
  "#{number} #{string}"
end

def bottles(beer)
  if beer == 0
    puts 'No more bottles of beer on the wall, no more bottles of beer.'
    puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
    return nil
  end
  print "#{pluralize(beer, 'bottle')} of beer on the wall,"
  puts " #{pluralize(beer, 'bottle')} of beer."
  puts "Take one down and pass it around, #{pluralize(beer - 1, 'bottle')} of beer on the wall."
  puts ''
  bottles(beer - 1)
end

bottles(99)
