#!/usr/bin/env ruby

class CashRegister
  def initialize
    @total_amount_owed = 0.00
  end

  def purchase(items_purchased)
      puts items_purchased
      @total_amount_owed += items_purchased
  end

  def total
    @total_amount_owed
  end

  # returns change
  def pay(amount_paid)
    if @total_amount_owed > amount_paid
       @total_amount_owed -= amount_paid
       puts "Your new total is $#{sprintf "%.2f", @total_amount_owed}"
    else
      change = amount_paid - @total_amount_owed
      puts "Your change is $#{sprintf "%.2f", change}"
      @total_amount_owed = 0.00
    end
  end
end

register = CashRegister.new
  puts 'Ex. #1'
  puts register.total
  register.purchase(3.78)
  puts register.total
  register.pay(5.00)
  puts register.total
  puts ''

  puts 'Ex. #2'
  register = CashRegister.new
  puts register.total
  register.purchase(3.78)
  register.purchase(5.22)
  puts register.total
  register.pay(5.00)
  puts register.total
  register.pay(5.00)
  puts register.total
