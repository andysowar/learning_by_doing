#!/usr/bin/env ruby

string_practice = 'this is a string to practice with'

puts string_practice
puts string_practice.capitalize
puts string_practice.upcase
puts string_practice.gsub 'string', "'string'"
puts "The string '#{string_practice}' has #{string_practice.length} characters"
puts string_practice.reverse
puts string_practice.slice(20, 9) * 2 + string_practice.slice(20, 9).chop + '!'
