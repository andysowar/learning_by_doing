#!/usr/bin/env ruby
#Calculates fuel cost for your road trip.
#Input the length of your trip (miles_driven)
#Input the mpg of your car (miles_per_gallon)
#Input the price of gas (price_per_gallon)
class FuelCost
  def initialize
    @miles_per_gallon = 0
    @total_miles = 0
    @price_per_gallon = 0
  end

  def length_of_trip(miles_driven)
    @total_miles += miles_driven
  end

  def mpg(miles_per_gallon)
    @miles_per_gallon = miles_per_gallon
  end

  def gallons_of_gas
    @gallons_needed = @total_miles / @miles_per_gallon
    puts "Total miles: #{@total_miles}"
    print "You need #{@gallons_needed} gallons of gas"
    puts " for your trip."
  end

  def fuel_cost(price_per_gallon)
    @total_fuel_cost = price_per_gallon * @gallons_needed
    print "At $#{format("%.2f", price_per_gallon)} per gallon, you will need"
    puts " $#{format("%.2f", @total_fuel_cost)} to pay for gas!"
  end
end

road_trip = FuelCost.new
road_trip.length_of_trip(300)
road_trip.length_of_trip(375)
road_trip.mpg(25)
road_trip.gallons_of_gas
road_trip.fuel_cost(2.60)

#Divide length of trip by cars MPG. This will determine amount of gas needed.
#Multiply those results by the fuel_price to get total cost of gas.

