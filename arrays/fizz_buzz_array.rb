#!/usr/bin/env ruby

numbers = Array(1..100)
fizzbuzz = []

numbers.each do |number|
  fizzbuzz.push number
  if number % 3 == 0 && number % 5 == 0
    fizzbuzz.pop
    fizzbuzz.push 'FizzBuzz'
  elsif number % 5 == 0
    fizzbuzz.pop
    fizzbuzz.push 'Buzz'
  elsif number % 3 == 0
    fizzbuzz.pop
    fizzbuzz.push 'Fizz'
  end
end

puts fizzbuzz
