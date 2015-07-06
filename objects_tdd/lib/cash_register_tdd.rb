# CashRegister class
class CashRegister
  attr_reader :total

  def initialize
    @total = 0.00
  end

  def purchase(amount)
    @total += amount
  end

  def pay(amount)
    if @total < amount
      amount -= @total
      @total = format('%.2f', amount).to_f
      puts "Your change is #{@total}"
    else
      @total -= amount
    end
  end
end
