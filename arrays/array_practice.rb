#!/usr/bin/env ruby

array = Array(1..10)

puts array.join('...') + '...'
puts 'T-' + array.reverse.join(', ') + '...  BLASTOFF!'
puts "The last element is #{array.last}"
puts "The first element is #{array.first}"
puts "The third element is #{array.fetch(2)}"
puts "The element with an index of #{array.find_index(4)} is #{array.find_index(5)}"
puts "The second from last element is #{array.at(-2)}"
array_first_four = array.take(4).join(', ')
puts "The first four elements are '#{array_first_four}'"
array_2 = (array.first(4) + array.last(3))
print "If we delete #{array.fetch(4)}, #{array.at(5)} and #{array.at(6)} from the array, "
puts "we're left with #{array_2.to_s.gsub(' ', '')}"
print "If we add #{array.at(4)} at the beginning of the array, we're left with"
array_3 = array.insert(0, array.delete_at(4))
array_4 = array_3.first(5) + array_3.last(3)
puts" #{array_4.to_s.gsub(' ', '')}"
print "If we add #{array.at(5)} at the end of the array, we're left with"
array_5 = array.insert(9, array.delete_at(5))
array_6 = array_5.first(5) + array_5.last(4)
puts " #{array_6.to_s.gsub(' ', '')}"
array_7 = array.delete_if {|number| number < 9 }
print "Only the elements #{array_7}"
puts " are > #{array_2.at(4)}."
print 'If we remove all the elements, then the length of the array is'
puts " #{array.clear.length}"
