#!/usr/bin/env ruby

answers = []

questions = ["Enter an adjective", "Enter an adjective", "Enter a noun",
             "Enter a noun", "Enter a plural noun",
             "Enter a game you like to play", "Enter a plural noun",
             "Enter a verb ending in -ing ", "Enter a verb ending in -ing",
             "Enter a plural noun", "Enter a verb ending in -ing ",
             "Enter a noun", "Enter the name of a plant", "Enter a body part",
             "Enter a place you like to visit", "Enter a verb ending in -ing ",
             "Enter an adjective", "Enter a number", "Enter a plural noun"]

questions.each do |question, input|
  puts question
  input = gets.chomp
  answers.push input
end

puts 'Thanks! Here is your mad lib:'

puts "A vacation is when you take a trip to some #{answers[0]} place"
puts "with your #{answers[1]} family. Usually you go to some place"
puts "that is near a/an #{answers[2]} or up on a/an #{answers[3]}."
puts "A good vacation place is one where you can ride #{answers[4]}"
puts "or play #{answers[5]} or go hunting for #{answers[6]}. I like"
puts "to spend my time #{answers[7]} or #{answers[8]}."
puts 'When parents go on a vacation, they spend their time eating'
puts "three #{answers[9]} a day, and fathers play golf, and mothers"
puts "sit around #{answers[10]}. Last summer, my little brother"
puts "fell in a/an #{answers[11]} and got poison #{answers[12]} all"
puts "over his #{answers[13]}. My family is going to go to (the)"
puts "#{answers[14]}, and I will practice #{answers[15]}. Parents"
puts 'need vacations more than kids because parents are always very'
puts "#{answers[16]} and because they have to work #{answers[17]}"
puts "hours every day all year making enough #{answers[18]} to pay"
puts 'for the vacation.'
